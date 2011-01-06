package engine.framework.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ILibraries 
	{
		
		function hasLibrary(id:String):Boolean;
		
		
		function getLibrary(id:String):ILibrary;
		
		
		function addLibrary(id:String, library:ILibrary):void;
		
		
		function removeLibrary(id:String):ILibrary;
		
	}
	
}