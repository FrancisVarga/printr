package com.vargamultimedia.printtool.events
{
	import flash.events.Event;
	
	public class ApplicationEvent extends Event
	{
		public static var APPLICATION_STARTUP:String = "APPLICATION_STARTUP";
		
		public function ApplicationEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}