package engine.graphics.interfaces 
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMapController 
	{
		function offsetBy(p:Point):void;
		
		function offsetTo(p:Point):void;
	}
	
}