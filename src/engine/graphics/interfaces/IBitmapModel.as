package engine.graphics.interfaces 
{
	import engine.geometry.interfaces.ITransformable;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IBitmapModel extends ITransformable
	{
		
		function get area():Rectangle;
		
		function set area(area:Rectangle):void;
		
		
		//function get offset():Point;
		
		//function set offset(offset:Point):void;
		
		
		//function get size():Point;
		
	}
	
}