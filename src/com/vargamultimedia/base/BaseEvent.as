package com.vargamultimedia.base
{
	import flash.events.Event;
	
	public class BaseEvent extends Event
	{
		
		private var _payload : Object;
		
		public function BaseEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}

		public function get payload():Object
		{
			return _payload;
		}

		public function set payload(value:Object):void
		{
			_payload = value;
		}

	}
}