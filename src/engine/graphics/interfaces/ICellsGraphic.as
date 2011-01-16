package engine.graphics.interfaces 
{
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.IIndexable;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellsGraphic extends IGraphic
	{
		
		function get index():int;
		
		function set index(index:int):void;
		
	}
	
}