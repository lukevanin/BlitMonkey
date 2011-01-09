package engine.framework.models 
{
	import engine.common.interfaces.IDictionary;
	import engine.common.Dictionary;
	import engine.framework.interfaces.ILibraries;
	import engine.framework.interfaces.ILibrary;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class LibrariesModel implements ILibraries
	{
		
		private var _collection:IDictionary;
		
		
		public function LibrariesModel() 
		{
			this._collection = new Dictionary();
		}
		

		public function hasLibrary(id:String):Boolean 
		{
			return this._collection.hasItem(id);
		}
		
		public function getLibrary(id:String):ILibrary 
		{
			return this._collection.getItem(id) as ILibrary
		}
		
		public function addLibrary(id:String, library:ILibrary):void 
		{
			this._collection.addItem(id, library);
		}
		
		public function removeLibrary(id:String):ILibrary 
		{
			return this._collection.removeItem(id) as ILibrary;
		}
		
	}

}