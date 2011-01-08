package engine.config.interfaces 
{
	import engine.collection.interfaces.IIterator;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IConfigProvider 
	{
		
		function getConfig(id:String):Object;
		
		function getIterator():IIterator;
		
	}
	
}