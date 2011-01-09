package engine.xml.providers 
{
	import engine.xml.interfaces.IXmlSchema;
	import engine.xml.models.XmlNodeModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlSchemaProvider implements IXmlSchema
	{
		
		private var _schema:IXmlSchema;
		
		
		public function XmlSchemaProvider() 
		{
			
		}
		
		
		public function parseXml(xml:XML):void
		{
			this._schema = this.parseXmlNode(xml);
		}
		
		
		
		private function parseXmlNode(xml:XML):IXmlSchema
		{
			//this.parseXmlNodeWhere(xml);

			var node:XmlNodeModel = new XmlNodeModel();
		}
		
	}

}