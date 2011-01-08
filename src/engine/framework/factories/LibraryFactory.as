package engine.framework.factories 
{
	import adobe.utils.CustomActions;
	import engine.config.interfaces.IClassLibraryConfig;
	import engine.config.interfaces.IConfigProvider;
	import engine.config.interfaces.ILibraryConfig;
	import engine.framework.adapters.ApplicationDomainGameLibraryAdapter;
	import engine.framework.adapters.ClassGameLibraryAdapter;
	import flash.display.MovieClip;
	import engine.framework.interfaces.ILibrary;
	import engine.framework.interfaces.ILibraryFactory;
	import flash.system.ApplicationDomain;
	import flash.utils.getDefinitionByName;
	
	/**
	 * TODO: support movieclips (how to know when a required library is loaded?)
	 * ...
	 * @author Luke Van In
	 */
	public class LibraryFactory implements ILibraryFactory 
	{
		
		private var _config:IConfigProvider;
		
		
		
		public function LibraryFactory(config:IConfigProvider) 
		{
			this._config = config;
		}
		
		
		
		
		public function createLibrary(id:String):ILibrary
		{
			var config:ILibraryConfig = this._config.getConfig(id) as ILibraryConfig;
			
			if (config is IClassLibraryConfig)
				return this.createClassLibrary(config as IClassLibraryConfig)
			/*else if (config is ISwfibraryConfig)
				return this.createSwfLibrary(config as ISwfLibraryConfig)*/
			else
				throw new Error("Unsupported library config " + typeof(config));
		}
		
		
		private function createClassLibrary(config:IClassLibraryConfig):ILibrary 
		{
			return new ClassGameLibraryAdapter(getDefinitionByName(config.className) as Class);
		}
		
		
		
		/*private function createMovieClipLibrary(config:ISwfLibraryConfig):IGameLibrary
		{
			return new SwfGameLibraryAdapter(new SwfLoader(config.
		}*/
		
		
		/*private function createApplicationDomainLibrary(applicationDomain:ApplicationDomain):IGameLibrary 
		{
			return new ApplicationDomainGameLibraryAdapter(applicationDomain);
		}*/
		
		
		
		
		/*public static function create(config:ILibraryConfigCollection):LibraryFactory
		{
			return new LibraryFactory(config);
		}*/
		
	}

}