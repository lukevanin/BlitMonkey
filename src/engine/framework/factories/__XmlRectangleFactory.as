package engine.framework.factories 
{
	import engine.common.StringUtil;
	import engine.framework.interfaces.IXmlComponentFactory;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __XmlRectangleFactory implements IXmlComponentFactory
	{
		
		public function createComponent(xml:XML):*
		{
			return StringUtil.stringToRectangle(xml.
		}
		
	}
	
}