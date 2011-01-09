package engine.framework.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface __IXmlComponentProvider extends IComponentProvider
	{
		
		function addType(type:Class, factory:IXmlComponentFactory):void;
		
	
		
	}
	
}