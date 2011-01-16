package engine.framework.factories 
{
	import engine.framework.interfaces.IClassLibraryBuilder;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import flash.utils.getDefinitionByName;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ClassLibraryFactory implements IObjectFactory
	{
		
		//private var _config:IConfig;
		
		private var _builder:IClassLibraryBuilder;
		
		
		//public function ClassLibraryFactory(config:IConfig, builder:IClassLibraryBuilder) 
		public function ClassLibraryFactory(builder:IClassLibraryBuilder) 
		{
			//this._config = config;
			
			this._builder = builder;
		}
		

		//public function createObject(id:String):Object 
		public function createObject(config:IConfig):Object 
		{
			//var config:IConfig = this._config.getConfig(id);
			
			var className:String = config.getProperty("className");
			
			return this._builder.buildClassLibrary(getDefinitionByName(className) as Class);
		}
		
	}

}