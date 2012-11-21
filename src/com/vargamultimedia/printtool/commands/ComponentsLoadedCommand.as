package com.vargamultimedia.printtool.commands
{
	import com.vargamultimedia.base.BaseFlexSprite;
	import com.vargamultimedia.printtool.models.ComponentsModel;
	import com.vargamultimedia.printtool.models.vo.ComponentVo;
	import com.vargamultimedia.printtool.views.startscreen.StartScreenView;
	
	import org.robotlegs.mvcs.Command;
	
	public class ComponentsLoadedCommand extends Command
	{
		
		[Inject]
		public var compModel : ComponentsModel;
		
		override public function execute() : void {
			
			var backgroundVo : ComponentVo = compModel.getCmpByKey("background");
			var background : BaseFlexSprite = new BaseFlexSprite();
			background.setCmpInfo(backgroundVo)
					  .setRawView(backgroundVo.rawComponent);
			
			DruckTool(this.contextView).addElement(background);
			
			var startScreenVo : ComponentVo = compModel.getCmpByKey("startscreen");
			var view : BaseFlexSprite = new StartScreenView();
			view.setCmpInfo(startScreenVo)
				.setRawView(startScreenVo.rawComponent);
			
			DruckTool(this.contextView).addElement(view);
		}
	}
}