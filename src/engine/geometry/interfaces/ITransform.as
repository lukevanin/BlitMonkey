package engine.geometry.interfaces 
{
	import engine.common.interfaces.ICloneable;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ITransform
	{
		
		function get position():Point;
		
		function set position(position:Point):void;
		
		
		
		function translate(p:Point):void;
		
		
		function append(t:ITransform):ITransform;
		
		
		function clone():ITransform;
		
	}
	
}