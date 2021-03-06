package engine.framework.interfaces 
{
	import engine.common.interfaces.IIterator;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IConfig
	{
		
		
		
		function getProperty(name:String):*;

		function getPropertyIterator():IIterator;
		
		
		function getConfig(id:String):IConfig;
		
		function getConfigIterator():IIterator;
		
		
	}
	
}