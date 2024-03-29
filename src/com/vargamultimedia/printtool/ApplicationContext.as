package com.vargamultimedia.printtool
{
	import com.vargamultimedia.printtool.commands.LoadConfigCommand;
	import com.vargamultimedia.printtool.commands.StartupCommand;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;

	public class ApplicationContext extends Context
	{
		public function ApplicationContext(contextView : DisplayObjectContainer = null, autoStartup : Boolean = true)
		{
			super(contextView, autoStartup);
		}

		override public function startup() : void
		{
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, StartupCommand);		
			super.startup();
		}
	}
}