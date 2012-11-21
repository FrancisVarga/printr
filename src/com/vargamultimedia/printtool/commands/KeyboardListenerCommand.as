package com.vargamultimedia.printtool.commands
{
	import com.vargamultimedia.printtool.events.ApplicationEvent;
	
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	
	import org.robotlegs.mvcs.Command;
	
	public class KeyboardListenerCommand extends Command
	{
		override public function execute() : void
		{
			this.contextView.stage.addEventListener(KeyboardEvent.KEY_UP, onKeyDown);
		}
		
		protected function onKeyDown(event:KeyboardEvent):void
		{
			if(event.altKey && event.keyCode == Keyboard.R)
			{
				dispatch(new ApplicationEvent(ApplicationEvent.RELOAD_APPLICATION));
			}
		}
	}
}