package com.vargamultimedia.printtool.commands
{
	import com.vargamultimedia.printtool.events.ApplicationEvent;
	import com.vargamultimedia.printtool.models.ComponentsModel;
	import com.vargamultimedia.printtool.models.ConfigModel;
	import com.vargamultimedia.printtool.models.vo.ComponentVo;
	
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.net.URLRequest;
	
	import org.robotlegs.mvcs.Command;
	
	public class ConfigLoadedCommand extends Command
	{
		
		[Inject]
		public var config : ConfigModel;
		
		[Inject]
		public var compModel : ComponentsModel;
		
		private var filesToLoad : int = 0;
		private var currentLoaded : int = 0;
		private var fileList : Object = {};
		
		override public function execute() : void {
			
			for(var editor : String in config.editors)
			{
				this.loadComponent(config.editors[editor]['path'], config.editors[editor]);
			}
			
			this.loadComponent(config.rawData['background']['path'], config.rawData['background']);  
			this.loadComponent(config.sidepanel['path'], config.sidepanel);
			this.loadComponent(config.startscreen['path'], config.startscreen);
		}
		
		private function loadComponent(url : String, meta : Object = null) : void
		{
			filesToLoad++;
			var file : File = File.applicationDirectory.resolvePath(url);
			if(file.exists)
			{
				file.canonicalize();
				var loader : Loader = new Loader();
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onObjectComplete);
				var fileUrl  : String = file.url;
				fileList[fileUrl] = meta;
				loader.load(new URLRequest(fileUrl));	
			}
		}
		
		protected function onObjectComplete(event:Event):void
		{
			
			var url : String = LoaderInfo(event.target).url;
			
			// TODO Auto-generated method stub
			var cmp : ComponentVo = new ComponentVo();
			cmp.rawComponent = event.target.content;
			cmp.componentMetaInfo = fileList[url];
			
			compModel.addCmp(cmp);
			currentLoaded++;
			
			if(currentLoaded == filesToLoad)
			{
				dispatch(new ApplicationEvent(ApplicationEvent.COMPONENTS_LOADED));	
			}
		}
	}
}