package engine.collection.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IIterator 
	{
		
		function get hasNext():Boolean;
		
		
		function get key():*;
		
		function get value():*;
		
		
		function reset():void;
		
		function next():void;
		
	}
	
}