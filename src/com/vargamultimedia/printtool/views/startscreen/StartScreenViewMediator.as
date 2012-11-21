package com.vargamultimedia.printtool.views.startscreen
{
	import com.vargamultimedia.base.BaseMediator;
	import com.vargamultimedia.printtool.events.StateMachineEvent;
	
	import flash.events.Event;
	
	public class StartScreenViewMediator extends BaseMediator
	{		
		override protected function onRegisterControlerComplete(event : Event):void
		{
			// TODO Auto Generated method stub
			var ctrlList : Array = this.getRawView().ctrlList;
			for(var i:int=0; i < ctrlList.length; i++)
			{
				this.addViewListener(ctrlList[i], onCtrlView);
			}
		}
		
		private function onCtrlView(event : Event):void
		{
			var newEvent : StateMachineEvent = new StateMachineEvent(StateMachineEvent.STATE_CHANGE);
			newEvent.payload = event;
			dispatch(newEvent);
		}
	}
}