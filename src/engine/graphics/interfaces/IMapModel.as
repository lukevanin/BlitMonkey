package engine.graphics.interfaces 
{
	import engine.common.interfaces.IGrid;
	import engine.common.interfaces.ISignal;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.interfaces.ITransformable;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMapModel
	{
		
		function get offset():Point;
		
		function set offset(offset:Point):void; // where the view is relative to the map
		
		
		function set gridSize(gridSize:Point):void;
		
		function get gridSize():Point;
		
		

		function set displaySize(displaySize:Point):void
		
		function get displaySize():Point;
		
		
		function get rows():int;
		
		function get columns():int;
	
		
		function get transform():ITransform; // where the map is drawn on the screen
		
		
		//function get indexChangeSignal():ISignal;
		
		
		//function setFlagged(x:int, y:int):void;
		
		//function unsetFlagged(x:int, y:int):void;
		
		//function getFlagged():Vector.<Point>;
		
		
		function setIndex(x:int, y:int, index:int):void;
		
		function getIndex(x:int, y:int):int;
	
		
	}
	
}