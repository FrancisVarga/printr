package com.vargamultimedia.printtool.events
{
	import flash.events.Event;

	public class ApplicationEvent extends Event
	{
		public static var APPLICATION_STARTUP : String = "APPLICATION_STARTUP";
		public static const APPLICATION_CONFIG_LOADED : String = "APPLICATION_CONFIG_LOADED";
		public static var COMPONENTS_LOADED:String = "COMPONENTS_LOADED";
		public static var RELOAD_APPLICATION:String = "RELOAD_APPLICATION";

		public function ApplicationEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false)
		{
			super(type, bubbles, cancelable);
		}
	}
}