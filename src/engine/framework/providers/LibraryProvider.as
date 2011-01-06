package engine.framework.providers 
{
	import demo.enums.LibraryEnum;
	import demo.libraries.GameLib;
	import engine.collection.interfaces.IIterator;
	import engine.collection.interfaces.ISafeDictionary;
	import engine.collection.SafeDictionary;
	import engine.config.interfaces.ILibraryConfigCollection;
	import engine.config.interfaces.ILibraryConfig;
	import engine.framework.interfaces.ILibraries;
	import engine.framework.interfaces.ILibrary;
	import engine.framework.interfaces.ILibraryFactory;
	import engine.framework.interfaces.ILibraryProvider;
	import engine.framework.models.LibrariesModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class LibraryProvider implements ILibraryProvider
	{
		
		private var _library:ISafeDictionary;
		
		private var _libraryFactory:ILibraryFactory;
		
		
		
		public function LibraryProvider(libraryFactory:ILibraryFactory) 
		{
			this._library = new SafeDictionary();
			
			this._libraryFactory = libraryFactory;
		}

		
		
		public function getLibrary(id:String):ILibrary
		{
			if (!this._library.hasItem(id))
				this._library.addItem(id, this._libraryFactory.createLibrary(id));
				
			return this._library.getItem(id) as ILibrary;
		}
		
		
		/*public function createLibraries(config:ILibraryConfigCollection):ILibraries 
		{
			var libraries:ILibraries = new LibrariesModel();
			
			var iterator:IIterator = config.getLibraryIterator();
			
			while (iterator.hasNext)
			{
				var id:String = iterator.key as String;
				
				libraries.addLibrary(id, this._libraryFactory.createLibrary(id));
				
				iterator.next();
			}
			
			return libraries;
		}*/
		
		
		
		
		public static function create(libraryFactory:ILibraryFactory):LibraryProvider
		{
			return new LibraryProvider(libraryFactory);
		}
		

		
	}

}