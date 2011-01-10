package engine.graphics.interfaces 
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IBitmapSpriteBuilder 
	{
		
		function buildSprite(bitmap:BitmapData, position:Point = null, area:Rectangle = null):IBitmapSprite;
		
	}
	
}