package com.vargamultimedia.base
{
	import flash.events.Event;
	
	public class BaseFlexSpriteEvent extends Event
	{
		
		public static var REGISTER_CONTROLER_COMPLETE:String = "REGISTER_CONTROLER_COMPLETE";
		
		public function BaseFlexSpriteEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}