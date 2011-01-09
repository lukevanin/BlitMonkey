package engine.graphics.interfaces 
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellBuilder 
	{
		
		function buildCell(area:Rectangle, offset:Point):ICell;
		
	}
	
}