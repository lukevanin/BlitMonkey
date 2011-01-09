package engine.framework.factories 
{
	import adobe.utils.CustomActions;
	import engine.common.interfaces.IDictionary;
	import engine.common.interfaces.IDictionary;
	import engine.framework.adapters.ApplicationDomainGameLibraryAdapter;
	import engine.framework.enums.LibraryTypeEnum;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.framework.interfaces.IObjectProvider;
	import flash.display.MovieClip;
	import engine.framework.interfaces.ILibrary;
	import flash.system.ApplicationDomain;
	import flash.utils.getDefinitionByName;
	
	/**
	 * TODO: support movieclips (how to know when a required library is loaded?)
	 * ...
	 * @author Luke Van In
	 */
	public class ObjectTypeFactory implements IObjectFactory 
	{
		
		//private var _config:IConfig;
		
		private var _factories:IDictionary;
		
		
		
		//public function ObjectTypeFactory(config:IConfig, factories:IDictionary) 
		public function ObjectTypeFactory(factories:IDictionary) 
		{
			//this._config = config;
			
			this._factories = factories;
		}
		
		
		
		
		public function createObject(config:IConfig):Object
		{
			//var config:IConfig = this._config.getConfig(id);
			
			var type:String = config.getProperty("type");

			if (!this._factories.hasItem(type))
				throw new Error("Unknown type '" + type + "'");
			
			var factory:IObjectFactory = this._factories.getItem(type) as IObjectFactory;
			
			return factory.createObject(config);
		}
		
		
	}

}