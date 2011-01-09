package engine.config.interfaces 
{
	import engine.collection.interfaces.IIterable;
	import engine.collection.interfaces.IIterator;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IConfigProvider 
	{
		
		function getEntity(id:String):IConfigProvider;
		
		function getProperty(name:String):String;
		
		function getEntityIterator():IIterator;
		
		function getPropertyIterator():IIterator;

		
	}
	
}