package engine.config.interfaces 
{
	import engine.collection.interfaces.IIterator;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ILibraryConfigCollection 
	{
		
		function getLibrary(id:String):ILibraryConfig;
		
		function getLibraryIterator():IIterator;
		
	}
	
}