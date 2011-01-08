package engine.config.factories 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.config.enums.XmlConfigEnum;
	import engine.config.interfaces.IBitmapConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.config.models.BitmapConfigModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlBitmapConfigFactory implements IXmlConfigFactory
	{
		
		public function XmlBitmapConfigFactory() 
		{
			
		}
		
		
		
		/*public function createConfig(xml:XML):Object 
		{
			var config:ISafeDictionary = new ISafeDictionary();
			
			for each (var bitmapXml:XML in xml.elements(XmlConfigEnum.BITMAP))
				config.addItem(xml.@id.toString(), this.createBitmapConfig(bitmapXml));
				
			return config;
		}*/
		
		
		public function createConfig(xml:XML):Object
		{
			return this.createBitmapConfig(xml);
		}
		
		
		private function createBitmapConfig(xml:XML):IBitmapConfig
		{
			return new BitmapConfigModel(xml.@asset.toString());
		}		
		
	}

}