package engine.graphics.models 
{
	import engine.graphics.interfaces.IBitmapModel;
	import engine.graphics.interfaces.IGraphicModel;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapModel implements IBitmapModel
	{
		
		private var _graphic:IGraphicModel;
		
		private var _area:Rectangle;
		
		
		
		public function get area():Rectangle
		{
			return this._area.clone();
		}
		
		public function set area(area:Rectangle):void
		{
			this._area.x = area.x;
			
			this._area.y = area.y;
			
			this._area.width = area.width;
			
			this._area.height = area.height;
		}
		
		
		public function get position():Point 
		{
			return this._graphic.position;
		}
		
		public function set position(position:Point):void 
		{
			this._graphic.position = position;
		}
		
		
		public function BitmapModel(graphic:IGraphicModel, area:Rectangle) 
		{
			this._graphic = graphic;
			
			this._area = area;
		}
		
		
				

		
	}

}