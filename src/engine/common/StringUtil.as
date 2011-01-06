package engine.common 
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class StringUtil 
	{
		
		public function StringUtil() 
		{
			
		}
		
		
		
		public static function stringToBoolean(s:String):Boolean
		{
			if ((s.toLowerCase() == "true") || (s == "1"))
				return true;
			else
				return false;
		}
		
		
		public static function stringToUint(s:String, r:int = 0):uint
		{
			return parseInt(s, r);
		}
		
		
		
		public static function stringToNumber(s:String):Number
		{
			return parseFloat(s);
		}
		
		
		
		public static function stringToPoint(s:String, delimiter:String = ","):Point
		{
			var a:Array = s.split(delimiter);
			
			var p:Point = new Point();
			
			p.x = stringToNumber(a[0]);
			
			p.y = stringToNumber(a[1]);
			
			return p;
		}
		
		
		
		public static function stringToRectangle(s:String, delimiter:String = ","):Rectangle
		{
			var a:Array = s.split(delimiter);
			
			var r:Rectangle = new Rectangle();
			
			r.x = stringToNumber(a[0]);
			
			r.y = stringToNumber(a[1]);
			
			r.width = stringToNumber(a[2]);
			
			r.height = stringToNumber(a[3]);
			
			return r;
		}
		
	}

}