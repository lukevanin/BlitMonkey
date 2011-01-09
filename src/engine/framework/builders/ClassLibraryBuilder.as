package engine.framework.builders 
{
	import engine.framework.adapters.ClassLibraryAdapter;
	import engine.framework.interfaces.IClassLibraryBuilder;
	import engine.framework.interfaces.ILibrary;
	import flash.utils.getDefinitionByName;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ClassLibraryBuilder implements IClassLibraryBuilder
	{
		
		public function ClassLibraryBuilder() 
		{
			
		}
		
		
		public function buildClassLibrary(className:String):ILibrary
		{
			return new ClassLibraryAdapter(getDefinitionByName(className) as Class);
		}
		
	}

}