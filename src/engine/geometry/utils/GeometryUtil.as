package engine.geometry.utils 
{
	import engine.geometry.interfaces.ITransform;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GeometryUtil 
	{
		
		public function GeometryUtil() 
		{
			
		}
		
		
		
		public static function getTransformedBoundingBox(r:Rectangle, t:ITransform):Rectangle
		{
			// TODO: support full transformation
			
			var o:Rectangle = new Rectangle();
			
			o.x = r.x + t.position.x;
			
			o.y = r.y + t.position.y;
			
			o.width = r.width;
			
			o.height = r.height;
			
			return o;
		}
		
		
		
		public static function transformPoint(p:Point, t:ITransform):Point
		{
			return new Point(p.x + t.position.x, p.y + t.position.y);
		}
		
	}

}