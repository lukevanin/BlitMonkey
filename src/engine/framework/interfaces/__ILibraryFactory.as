package engine.framework.interfaces 
{
	import engine.config.interfaces.ILibraryConfig;
	import flash.display.MovieClip;
	import flash.system.ApplicationDomain;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ILibraryFactory 
	{
		
		//function createClassLibrary(classReference:Class):IGameLibrary;
		
		
		//function createApplicationDomainLibrary(applicationDomain:ApplicationDomain):IGameLibrary;
		
		
		function createLibrary(id:String):ILibrary;
		
	}
	
}