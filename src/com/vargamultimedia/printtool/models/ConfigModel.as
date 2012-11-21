package com.vargamultimedia.printtool.models
{
	import com.vargamultimedia.base.BaseModel;

	/**
	 * @author Francis Varga
	 */
	public class ConfigModel extends BaseModel
	{		
		public function get sidepanel() : *
		{
			return this.components['sidepanel'];
		}
		
		public function get startscreen() : *
		{
			return this.components['startscreen'];
		}
		
		public function get editors() : *
		{
			return this.components['editor'];
		}
		
		public function get components() : *
		{
			return this.rawData['components'];
		}
	}
}
