package engine.config.interfaces 
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellConfig 
	{
		
		function get area():Rectangle;
		
		function get offset():Point;
		
	}
	
}