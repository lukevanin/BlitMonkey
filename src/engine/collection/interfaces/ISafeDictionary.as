package engine.collection.interfaces 
{

	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ISafeDictionary extends ICollection
	{
		
		function hasItem(key:*):Boolean;
		
		function getItem(key:*):*;
		
		function addItem(key:*, value:*):void;
		
		function removeItem(key:*):*;
		
	}
	
}