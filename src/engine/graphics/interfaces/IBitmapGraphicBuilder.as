package engine.graphics.interfaces 
{
	import flash.display.BitmapData;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IBitmapGraphicBuilder 
	{
		
		function buildBitmapGraphic(bitmap:BitmapData):IGraphic;
		
	}
	
}