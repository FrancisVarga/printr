package com.vargamultimedia.base
{
	import org.robotlegs.mvcs.Actor;

	/**
	 * @author Francis Varga
	 */
	public class BaseModel extends Actor
	{
		private var _rawData : Object = {};

		public function getValueByKey(key : String) : *
		{
			return this.rawData[key];
		}

		public function setValueByKey(key : String, value : Object) : BaseModel
		{
			this.rawData[key] = value;
			return this;
		}

		public function get rawData() : Object
		{
			return _rawData;
		}

		public function set rawData(rawData : Object) : void
		{
			this._rawData = rawData;
			this.parseData();
		}

		protected function parseData() : void
		{
		}
	}
}
