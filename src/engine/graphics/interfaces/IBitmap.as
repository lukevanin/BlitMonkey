package engine.graphics.interfaces 
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IBitmap extends IGraphic
	{
		
		function get area():Rectangle;
		
		function set area(area:Rectangle):void;
		
	}
	
}