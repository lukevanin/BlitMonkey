package engine.framework.interfaces 
{
	import engine.config.interfaces.ILibraryConfigCollection;
	import engine.framework.interfaces.ILibraries;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface __ILibrariesFactory 
	{
		
		function createLibraries(config:ILibraryConfigCollection):ILibraries;
		
	}
	
}