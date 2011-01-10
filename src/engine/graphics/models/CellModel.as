package engine.graphics.models 
{

	import engine.graphics.interfaces.ICell;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellModel implements ICell
	{
		
		private var _area:Rectangle;
		
		private var _offset:Point;
		

		public function get area():Rectangle
		{
			return this._area.clone();
		}
		
		
		public function get offset():Point
		{
			return this._offset.clone();
		}
		
		
		//public function CellModel(area:Rectangle, offset:Point, bitmapData:BitmapData) 
		public function CellModel(area:Rectangle, offset:Point) 
		{
			this._area = area.clone();
			
			this._offset = offset.clone();
		}
		
	}

}