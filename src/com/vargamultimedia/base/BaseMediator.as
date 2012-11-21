package com.vargamultimedia.base
{
	import flash.events.Event;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class BaseMediator extends Mediator
	{
		
		override public function onRegister():void
		{
			this.addViewListener(BaseFlexSpriteEvent.REGISTER_CONTROLER_COMPLETE, onRegisterControlerComplete, BaseFlexSpriteEvent);
			this.getRawView().initCtrl();
		}
		
		protected function onRegisterControlerComplete(event : Event):void
		{			
		}
		
		protected function getRawView() : BaseFlexSprite
		{
			return (this.viewComponent as BaseFlexSprite);
		}
	}
}