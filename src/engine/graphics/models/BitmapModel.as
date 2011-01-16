package engine.graphics.models 
{
	import engine.geometry.interfaces.ITransform;
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
		
		private var _transform:ITransform;
		
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
		
		
		public function get transform():ITransform 
		{
			return this._transform;
		}
		
		/*public function set transform(transform:ITransform):void 
		{
			this._transform = transform;
		}*/
		
		
		public function BitmapModel(transform:ITransform, area:Rectangle) 
		{
			this._transform = transform.clone();
			
			this._area = area.clone();
		}
		
		
				

		
	}

}