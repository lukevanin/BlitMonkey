package engine.common.interfaces 
{

	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IDictionary
	{
		
		function hasItem(key:*):Boolean;
		
		function getItem(key:*):*;
		
		function getItemAt(index:int):*;
		
		function addItem(key:*, value:*):void;
		
		function removeItem(key:*):*;
		
		
		function clone():IDictionary;
		
	}
	
}