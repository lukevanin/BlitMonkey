package engine.graphics.interfaces 
{
	import engine.common.interfaces.IGrid;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMap extends IGraphic
	{
		
		function get columns():int;
		
		function get rows():int;
		
		
		function setIndex(column:int, row:int, index:int):void;
		
		function getIndex(column:int, row:int):int;
		
		
		function offsetBy(p:Point):void;
		
		function offsetTo(p:Point):void;
		
	}
	
}