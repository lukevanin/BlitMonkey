package engine.collection.interfaces 
{

	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IDictionary extends ICollection
	{
		
		function hasItem(key:*):Boolean;
		
		function getItem(key:*):*;
		
		function getItemAt(index:int):*;
		
		function addItem(key:*, value:*):void;
		
		function removeItem(key:*):*;
		
	}
	
}