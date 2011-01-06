package engine.graphics.interfaces 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ISprite 
	{
		
		function update(time:Number, destinationBitmap:BitmapData):void;
		
	}
	
}