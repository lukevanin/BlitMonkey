package engine.graphics.interfaces 
{
	import flash.display.BitmapData;
	import flash.display.IBitmapDrawable;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IRenderContext
	{
		
		function blit(bitmap:BitmapData, sourceArea:Rectangle, destinationPoint:Point):void;
		
	}
	
}