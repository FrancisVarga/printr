package com.vargamultimedia.printtool.commands
{
	import com.vargamultimedia.printtool.events.ApplicationEvent;
	import com.vargamultimedia.printtool.events.StateMachineEvent;
	import com.vargamultimedia.printtool.models.ComponentsModel;
	import com.vargamultimedia.printtool.models.ConfigModel;
	import com.vargamultimedia.printtool.services.LoaderService;
	import com.vargamultimedia.printtool.views.startscreen.StartScreenView;
	import com.vargamultimedia.printtool.views.startscreen.StartScreenViewMediator;
	
	import mx.events.StateChangeEvent;
	
	import org.robotlegs.mvcs.Command;

	public class StartupCommand extends Command
	{
		override public function execute() : void
		{
			commandMap.mapEvent(ApplicationEvent.APPLICATION_STARTUP, LoadConfigCommand);
			commandMap.mapEvent(ApplicationEvent.APPLICATION_STARTUP, KeyboardListenerCommand);
			commandMap.mapEvent(ApplicationEvent.RELOAD_APPLICATION, ReloadApplicationCommand);
			commandMap.mapEvent(ApplicationEvent.APPLICATION_CONFIG_LOADED, ConfigLoadedCommand);
			commandMap.mapEvent(ApplicationEvent.COMPONENTS_LOADED, ComponentsLoadedCommand);
			
			commandMap.mapEvent(StateMachineEvent.STATE_CHANGE, StateMachineCommand, StateMachineEvent);
			
			injector.mapClass(LoaderService, LoaderService);
			injector.mapSingleton(ConfigModel);
			injector.mapSingleton(ComponentsModel);
			
			mediatorMap.mapView(StartScreenView, StartScreenViewMediator);
			
			dispatch(new ApplicationEvent(ApplicationEvent.APPLICATION_STARTUP));
		}
	}
}