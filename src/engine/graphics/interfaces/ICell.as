package engine.graphics.interfaces 
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICell
	{
		function get area():Rectangle;
		
		function get offset():Point;
	}
	
}