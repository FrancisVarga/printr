package com.vargamultimedia.printtool.models
{
	import com.vargamultimedia.base.BaseModel;
	import com.vargamultimedia.printtool.models.vo.ComponentVo;

	/**
	 * @author hissterkiller
	 */
	public class ComponentsModel extends BaseModel
	{
		private var compList : Array = [];
		private var keyList : Object = {};
		
		public function addCmp(item : ComponentVo):void
		{
			this.compList.push(item);
			this.keyList[item.componentMetaInfo['id']] = item;
		}
		
		public function getCmpByKey(key : String) : *
		{
			return this.keyList[key];
		}
		
		public function getCmpById(id : int) : *
		{
			return this.compList[id];
		}
	}
}