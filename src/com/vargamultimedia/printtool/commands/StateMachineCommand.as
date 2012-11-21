package com.vargamultimedia.printtool.commands
{
	import com.vargamultimedia.printtool.events.StateMachineEvent;
	import com.vargamultimedia.printtool.models.ComponentsModel;
	import com.vargamultimedia.printtool.models.ConfigModel;
	
	import org.robotlegs.mvcs.Command;
	
	public class StateMachineCommand extends Command
	{
		
		[Inject]
		public var stateEvent : StateMachineEvent;
		
		[Inject]
		public var cmpModel : ComponentsModel;
		
		[Inject]
		public var config : ConfigModel;
		
		override public function execute():void
		{
			trace(stateEvent.type);
		}
	}
}