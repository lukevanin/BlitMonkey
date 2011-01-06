package engine.framework.factories 
{
	import demo.enums.LibraryEnum;
	import demo.libraries.GameLib;
	import engine.collection.interfaces.IIterator;
	import engine.config.interfaces.ILibraryConfigCollection;
	import engine.config.interfaces.ILibraryConfig;
	import engine.framework.interfaces.ILibraries;
	import engine.framework.interfaces.ILibrariesFactory;
	import engine.framework.interfaces.ILibraryFactory;
	import engine.framework.models.LibrariesModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __LibrariesFactory implements ILibrariesFactory
	{
		
		private var _libraryFactory:ILibraryFactory;
		
		
		
		public function LibrariesFactory(libraryFactory:ILibraryFactory) 
		{
			this._libraryFactory = libraryFactory;
		}

		
		
		public function createLibraries(config:ILibraryConfigCollection):ILibraries 
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
		}
		
		
		
		
		public static function create(libraryFactory:ILibraryFactory):LibrariesFactory
		{
			return new LibraryFactory(libraryFactory);
		}
		

		/*public function create():IGameLibraries
		{
			var factory:IGameLibraryFactory = new GameLibraryFactory();
			
			var libraries:IGameLibraries = new GameLibrariesModel();
			
			libraries.addLibrary(LibraryEnum.GAME_LIB, factory.createClassLibrary(GameLib));
			
			return libraries;
		}*/
		
		
		
	}

}