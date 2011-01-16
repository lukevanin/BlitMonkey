package engine.graphics.interfaces 
{
	import engine.common.interfaces.IGrid;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMap extends IGrid, IGraphic
	{
		
		function get offset():Point;
		
		function set offset(offset:Point):void;
		
	}
	
}