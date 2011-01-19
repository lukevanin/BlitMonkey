package engine.geometry.utils 
{
	import engine.geometry.interfaces.ITransform;
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
		
	}

}