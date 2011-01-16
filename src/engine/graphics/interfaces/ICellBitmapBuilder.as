package engine.graphics.interfaces 
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellBitmapBuilder 
	{
		
		function buildCellBitmap(bitmap:BitmapData, cellSize:Point, index:int = 0):IIndexableGraphic;
		
	}
	
}