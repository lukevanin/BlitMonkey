package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICollection
	{
		
		function get numItems():int;
		
		function addItem(item:*):void;
		
		function getItemAt(index:int):*;
		
		function removeItemAt(index:int):*;
		
		
		//function getIterator():IIterable;
		
	}
	
}