package com.vargamultimedia.printtool.views.startscreen
{
	import com.vargamultimedia.base.BaseFlexSprite;
	import com.vargamultimedia.base.BaseFlexSpriteEvent;
	
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	public class StartScreenView extends BaseFlexSprite
	{
		override protected function registerControler() : void
		{
			for(var item : Object in this.rawView)
			{
				var mcItem : Object = this.rawView[item];
				if(mcItem is MovieClip || mcItem is SimpleButton)
				{
					this._ctrlList.push(item);
					mcItem.addEventListener(MouseEvent.CLICK, onItemClicked);
				}
			}
			
			dispatchEvent(new BaseFlexSpriteEvent(BaseFlexSpriteEvent.REGISTER_CONTROLER_COMPLETE));
		}
		
		protected function onItemClicked(event:Event):void
		{
			var name : String = event.target['name'];
			dispatchEvent(new BaseFlexSpriteEvent(name));
		}
	}
}