package engine.common.utils 
{
	import com.adobe.crypto.MD5;
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
		
		
		public static function stringToInt(s:String, r:int = 0):int
		{
			return parseInt(s, r);
		}
		
		
		
		
		public static function stringToFraction(s:String, delimiter:String = "/"):Number
		{
			if (s.indexOf(delimiter) != -1)
			{
				// fractional form (eg: 1/15)
				var parts:Array = s.split(delimiter);
				
				var a:Number = StringUtil.stringToNumber(parts[0]);
				
				var b:Number = StringUtil.stringToNumber(parts[1]);
				
				return a / b;
			}
			else
			{
				// decimal form (eg: 0.25)
				return StringUtil.stringToNumber(s);
			}
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
		
		
		
		
		public static function createGuid():String
		{
			return StringUtil.hash(Math.random().toString());
		}
		
		
		
		public static function hash(s:String):String
		{
			return MD5.hash(s);
		}
		
	}

}