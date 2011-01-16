package engine.graphics.interfaces 
{
	import flash.display.BitmapData;
	import flash.display.IBitmapDrawable;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IBitmapBuilder 
	{
		
		function buildBitmap(source:IBitmapDrawable, area:Rectangle = null):IBitmap;
		
	}
	
}