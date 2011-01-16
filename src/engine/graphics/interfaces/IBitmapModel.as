package engine.graphics.interfaces 
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IBitmapModel extends IGraphicModel
	{
		
		function get area():Rectangle;
		
		function set area(area:Rectangle):void;
		
		
		//function get offset():Point;
		
		//function set offset(offset:Point):void;
		
		
		//function get size():Point;
		
	}
	
}