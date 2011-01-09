package engine.framework.providers 
{
	import engine.collection.interfaces.IDictionary;
	import engine.collection.Dictionary;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.framework.interfaces.IObjectProvider;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ObjectProvider implements IObjectProvider
	{
		
		private var _objects:IDictionary;
		
		private var _config:IConfig;
		
		private var _factory:IObjectFactory;
		
		
		public function ObjectProvider(config:IConfig, factory:IObjectFactory) 
		{
			this._objects = new Dictionary();
			
			this._config = config;
			
			this._factory = factory;
		}
		

		public function getObject(id:String):Object 
		{
			if (!this._objects.hasItem(id))
				this._objects.addItem(id, this._factory.createObject(this._config.getConfig(id)));
				
			return this._objects.getItem(id);
		}
		
		
		
		
	}

}