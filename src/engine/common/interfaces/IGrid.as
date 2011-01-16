package engine.common.interfaces 
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IGrid 
	{
		
		function get dimensions():Point;
		
		function setItemAt(item:*, position:Point):void;
		
		function getItemAt(position:Point):*;
	
	}
	
}