package engine.framework.factories 
{
	import engine.collection.interfaces.IDictionary;
	import engine.collection.Dictionary;
	import engine.common.StringUtil;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IConfigFactory;
	import engine.framework.providers.ConfigProvider;


	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlConfigFactory implements IConfigFactory
	{
		
		//private var _xml:XML;
		
		private var _xmlNamespace:Namespace;
		
		
		//public function XmlConfigFactory(xml:XML, xmlNamespace:Namespace) 
		public function XmlConfigFactory(xmlNamespace:Namespace) 
		{
			//this._xml = xml;
			
			this._xmlNamespace = xmlNamespace;
		}
		

		
		public function createConfig(xml:XML):IConfig 
		{
			//return this.createXmlConfig(this.getXmlNode(id));
			return this.createXmlConfig(xml);
		}
		
		
		
		/*private function getXmlNode(id:String):XML
		{
			var idAttribute:QName = new QName(this._xmlNamespace, "id");
			
			var nodes:XMLList = this._xml.children().(attribute(idAttribute) == id);
			
			if ((nodes == null) || (nodes.length() == 0))
				throw new Error("No xml node with id " + id);
				
			if (nodes.length() != 1)
				throw new Error("Ambigious node id reference " + id);
				
			return nodes[0]
		}*/
		
		
		
		private function createXmlConfig(xml:XML):IConfig
		{
			return new ConfigProvider(this.createConfigs(xml), this.createProperties(xml));
		}
		
		
		private function createConfigs(xml:XML):IDictionary
		{
			var configs:IDictionary = new Dictionary();
			
			//var factory:IConfigFactory = new XmlConfigFactory(xml, this._xmlNamespace);
			var factory:IConfigFactory = new XmlConfigFactory(this._xmlNamespace);
			
			for each (var childXml:XML in xml.children())
			{
				var idAttribute:XMLList = childXml.attribute(new QName(this._xmlNamespace, "id"));
				
				var id:String;
				
				if (idAttribute.length() == 1)
					id = idAttribute[0].toString();
				else
					id = StringUtil.createGuid();
				
				configs.addItem(id, this.createXmlConfig(childXml));
			}
				
			return configs;
		}
		
		
		private function createProperties(xml:XML):IDictionary
		{
			var properties:IDictionary = new Dictionary();
			
			for each (var attributeXml:XML in xml.attributes())
				properties.addItem(attributeXml.name().toString(), attributeXml.toString());
				
			return properties;
		}
		

		

		
	}

}