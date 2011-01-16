package engine.common.utils 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.IBitmapDrawable;
	import flash.geom.Matrix;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapUtil 
	{
		
		public function BitmapUtil() 
		{
			
		}
		
		
		
		public static function getBitmapData(source:IBitmapDrawable):BitmapData
		{
			if (source is BitmapData)
				return source as BitmapData;
				
			if (source is Bitmap)
				return (source as Bitmap).bitmapData;
				
			if (source is DisplayObject)
			{
				var displayObject:DisplayObject = source as DisplayObject;
				
				var bitmapData:BitmapData = new BitmapData(displayObject.width, displayObject.height, true, 0);
				
				bitmapData.draw(source, new Matrix(), null, null, null, false);
				
				return bitmapData;
			}
			
			throw new Error("Cannot derive bitmap from " + source);
		}
		
		

	}

}