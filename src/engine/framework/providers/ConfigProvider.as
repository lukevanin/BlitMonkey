package engine.framework.providers 
{
	import engine.common.interfaces.IIterator;
	import engine.common.interfaces.IDictionary;
	import engine.common.Dictionary;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IConfigFactory;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ConfigProvider implements IConfig 
	{
		
		private var _configs:IDictionary;
		
		private var _properties:IDictionary;
		
		//private var _configFactory:IConfigFactory;
		
		
		public function ConfigProvider(configs:IDictionary = null, properties:IDictionary = null) 
		{
			this._configs = configs;
			
			this._properties = properties;
			
			//this._configFactory = configFactory;
		}
		

		public function getConfig(id:String):IConfig 
		{
			//if (!this._configs.hasItem(id))
			//	this._configs.addItem(id, this._configFactory.createConfig(id));
				
			return this._configs.getItem(id) as IConfig;
		}
		
		public function getConfigIterator():IIterator 
		{
			return this._configs.getIterator();
		}
		
		public function getProperty(name:String):* 
		{
			if (!this._properties.hasItem(name))
				throw new Error("Property '" + name + "' not found");
				
			return this._properties.getItem(name);
		}
		
		
		public function getPropertyIterator():IIterator 
		{
			return this._properties.getIterator();
		}
		


		
	}

}