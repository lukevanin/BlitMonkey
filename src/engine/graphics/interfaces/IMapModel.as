package engine.graphics.interfaces 
{
	import engine.common.interfaces.IGrid;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMapModel extends IGrid, IGraphicModel
	{
		
		function get offset():Point;
		
		function set offset(offset:Point):void;
		
		
		//function get dimensions():Point;
		
		//function set dimensions(dimensions:Point):void;
		
	}
	
}