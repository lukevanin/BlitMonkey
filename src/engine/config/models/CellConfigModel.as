package engine.config.models 
{
	import engine.common.StringUtil;
	import engine.config.interfaces.ICellConfig;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellConfigModel implements ICellConfig
	{
		
		private var _area:Rectangle;
		
		private var _offset:Point
		
		
		
		public function get area():Rectangle
		{
			return this._area;
		}
		
		
		public function get offset():Point
		{
			return this._offset;
		}
		
		
		
		
		public function CellConfigModel(area:Rectangle, offset:Point) 
		{
			this._area = area;
			
			this._offset = offset;
		}
		
		
		
		/**
		 * Example XML:
		 * 		<cell area="5,4,44,40" offset="33,40" />
		 * 
		 * @param	xml
		 */
		/*public function parseXml(xml:XML):void
		{
			this._area = StringUtil.stringToRectangle(xml.@area.toString());
			
			this._offset = StringUtil.stringToPoint(xml.@area.toString());
		}*/
		
		
		
		/*public static function create(xml:XML):CellConfigModel
		{
			var config:CellConfigModel = new CellConfigModel();
			
			config.parseXml(xml);
			
			return config;
		}*/
		

		
	}

}