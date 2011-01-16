package engine.common.interfaces 
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IGrid 
	{
		
		function get columns():int;
		
		function get rows():int;
		
		function setItem(column:int, row:int, item:*):void;
		
		function getItem(column:int, row:int):*;
		
		function clone():IGrid;
		
	}
	
}