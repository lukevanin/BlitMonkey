package engine.graphics.interfaces 
{
	import engine.common.interfaces.ICollection;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IIndexableGraphicModel extends IGraphicModel, ICollection
	{
		
		function get index():int;
		
		function set index(index:int):void;
		
	}
	
}