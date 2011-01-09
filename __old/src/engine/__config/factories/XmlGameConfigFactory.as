package engine.config.factories 
{
	import engine.collection.interfaces.IIterator;
	import engine.collection.interfaces.IDictionary;
	import engine.collection.Dictionary;
	import engine.config.interfaces.IConfigProvider;
	import engine.config.interfaces.IFactoryType;
	import engine.config.interfaces.IFactoryTypeProvider;
	import engine.config.interfaces.IGameConfig;
	import engine.config.interfaces.ILibraryConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.config.models.ConfigCollectionModel;
	import engine.config.models.GameConfigModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlGameConfigFactory implements IXmlConfigFactory 
	{
		
		private var _factoryTypes:IFactoryTypeProvider;
		
		
		
		
		public function XmlGameConfigFactory(factoryTypes:IFactoryTypeProvider) 
		{
			this._factoryTypes = factoryTypes;
		}
		
		
		
		public function createConfig(xml:XML):Object 
		{
			return this.createGameConfig(xml);
		}
		
		
		
		private function createGameConfig(xml:XML):IGameConfig
		{
			var collections:IDictionary = this.createCollections(xml);
			
			var configs:IDictionary = new Dictionary();
			
			var iterator:IIterator = collections.getIterator();
			
			while (iterator.hasNext)
			{
				configs.addItem(iterator.key, new ConfigCollectionModel(iterator.value as IDictionary));
				
				iterator.next();
			}
			
			return new GameConfigModel(configs)
		}		
		
		
		
		private function createCollections(xml:XML):IDictionary
		{
			var collections:IDictionary = new Dictionary();
			
			for each (var childXml:XML in xml.children())
			{
				var name:String = childXml.name().toString();
				
				if (!this._factoryTypes.hasType(name))
				{
					trace("Warning -> XmlGameConfigFactory > createCollections: No type for node " + name);
					continue;
				}
				
				var factoryType:IFactoryType = this._factoryTypes.getType(name);
						
				if (!collections.hasItem(factoryType.type))
					collections.addItem(factoryType.type, new Dictionary());
					
				var collection:IDictionary = collections.getItem(factoryType.type) as IDictionary;
				
				collection.addItem(childXml.@id.toString(), factoryType.factory.createConfig(childXml));		
			}
			
			return collections;
		}
		
			/*var factoryIterator:IIterator = this._factories.getIterator();
			
			while (factoryIterator.hasNext)
			{
				var type:Class = factoryIterator.key as Class;
				
				var factory:IXmlConfigFactory = factoryIterator.value as IXmlConfigFactory;
				
				if (!configs.hasItem(type))
					configs.addItem(type, new Dictionary();
					
				var collection:IDictionary = configs.getItem(type);
				
				collection.addItem(type, factory.createConfig(
				
				factoryIterator.next();
			}*/
	
	
		
		
	}

}