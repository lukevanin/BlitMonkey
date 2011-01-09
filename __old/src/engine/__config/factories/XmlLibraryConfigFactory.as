package engine.config.factories 
{
	import engine.collection.interfaces.IDictionary;
	import engine.config.enums.LibraryTypeEnum;
	import engine.config.enums.XmlConfigEnum;
	import engine.config.interfaces.ILibraryConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.config.models.ClassLibraryConfigModel;
	import engine.config.models.LibraryConfigModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlLibraryConfigFactory implements IXmlConfigFactory
	{
		
		public function XmlLibraryConfigFactory() 
		{
			
		}
		

		/*public function createConfig(xml:XML):Object 
		{
			var config:IDictionary = new IDictionary();
			
			for each (var libraryXml:XML in xml.elements(XmlConfigEnum.LIBRARY))
				config.addItem(libraryXml.@id.toString(), this.createLibraryConfig(libraryXml));
				
			return config;
		}*/
		
		
		public function createConfig(xml:XML):Object
		{
			return this.createLibraryConfig(xml);
		}
		
		
		
		private function createLibraryConfig(xml:XML):ILibraryConfig
		{
			var id:String = xml.@id;
			
			var type:String = xml.@type.toString();
			
			switch (type)
			{
				case LibraryTypeEnum.CLASS:
					return new ClassLibraryConfigModel(xml.@className.toString());
					
				default:
					throw new Error("Unsupported type " + type);
			}
		}		
		
	}

}