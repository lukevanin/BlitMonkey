package engine.framework.adapters 
{
	import engine.framework.interfaces.ILibrary;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ClassLibraryAdapter implements ILibrary
	{
		
		private var _libraryClass:Class;
		
		
		public function ClassLibraryAdapter(libraryClass:Class) 
		{
			this._libraryClass = libraryClass;
		}
		

		
		public function hasClass(id:String):Boolean
		{
			return (this._libraryClass[id] is Class);
		}
		
		
		public function getClass(id:String):Class 
		{
			return this._libraryClass[id];
		}
		
		

		
	}

}