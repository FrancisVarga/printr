package com.vargamultimedia.printtool.events
{
	import com.vargamultimedia.base.BaseEvent;
	
	import flash.events.Event;
	
	public class StateMachineEvent extends BaseEvent
	{
		public static var STATE_CHANGE:String = "StateMachineEvent.STATE_CHANGE";
		
		public function StateMachineEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
		override public function clone():Event
		{
			var event  : StateMachineEvent = new StateMachineEvent(this.type);
			event.payload = this.payload;
			return event;
		}
	}
}