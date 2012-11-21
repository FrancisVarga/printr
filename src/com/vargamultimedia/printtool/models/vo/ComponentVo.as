package com.vargamultimedia.printtool.models.vo
{
	import com.vargamultimedia.base.BaseModel;
	
	import flash.geom.Point;
	
	public class ComponentVo extends BaseModel
	{
		
		private var vPoint : Point;
		
		public function set rawComponent(raw : Object) : void
		{
			this.setValueByKey("rawComponent", raw);
		}
		public function get rawComponent() : *
		{
			return this.getValueByKey("rawComponent");
		}
		
		public function set componentMetaInfo(data : Object) : void
		{
			this.setValueByKey("componentMetaInfo", data);
			this.parseData();
		}
		
		override protected function parseData():void
		{
			var position : Object = this.componentMetaInfo['position'];
			this.vPoint = new Point(position['x'], position['y']);
		}
		
		public function getViewPoint() : Point
		{
			return this.vPoint;
		}
		
		public function get componentMetaInfo() : *
		{
			return this.getValueByKey("componentMetaInfo");
		}
	}
}