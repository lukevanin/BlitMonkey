package engine.config.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IFactoryType 
	{
		
		function get type():Class;
		
		function get factory():IXmlConfigFactory;
		
	}
	
}