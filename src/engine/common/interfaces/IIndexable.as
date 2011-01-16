package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IIndexable 
	{
		
		
		
		function get index():int;
		
		function set index(index:int):void;
		
		function get range():IRange;
		
	}
	
}