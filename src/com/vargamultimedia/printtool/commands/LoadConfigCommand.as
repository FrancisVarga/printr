/**
 * Created with IntelliJ IDEA.
 * User: hissterkiller
 * Date: 11/21/12
 * Time: 8:20 PM
 * To change this template use File | Settings | File Templates.
 */
package com.vargamultimedia.printtool.commands
{
	import com.vargamultimedia.printtool.events.ApplicationEvent;
	import com.vargamultimedia.printtool.models.ConfigModel;

	import flash.events.Event;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;

	import org.robotlegs.mvcs.Command;

	public class LoadConfigCommand extends Command
	{
		private var fileStream : FileStream;
		[Inject]
		public var configModel : ConfigModel;

		override public function execute() : void
		{
			var configFile : File = File.applicationDirectory.resolvePath("config.json");
			this.fileStream = new FileStream();
			this.fileStream.addEventListener(Event.COMPLETE, onFileLoadComplete);
			this.fileStream.openAsync(configFile, FileMode.READ);
		}

		private function onFileLoadComplete(event : Event) : void
		{
			var configJson : String = this.fileStream.readUTFBytes(fileStream.bytesAvailable);
			var config : Object = JSON.parse(configJson);
			configModel.rawData = config;

			dispatch(new ApplicationEvent(ApplicationEvent.APPLICATION_CONFIG_LOADED));
		}
	}
}
