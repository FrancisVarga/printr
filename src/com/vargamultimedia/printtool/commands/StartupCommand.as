package com.vargamultimedia.printtool.commands {
	import com.vargamultimedia.printtool.events.ApplicationEvent;
	import com.vargamultimedia.printtool.services.LoaderService;
	
	import org.robotlegs.mvcs.Command;

	public class StartupCommand extends Command {
		override public function execute() : void {
			initDI();
		}

		private function initDI() : void {
			
			commandMap.mapEvent(ApplicationEvent.APPLICATION_STARTUP, ApplicationStartupCommand);
			
			injector.mapClass(LoaderService, LoaderService);
			
			dispatch(new ApplicationEvent(ApplicationEvent.APPLICATION_STARTUP));
			
		}
	}
}