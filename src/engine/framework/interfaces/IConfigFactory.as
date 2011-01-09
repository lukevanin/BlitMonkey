package engine.framework.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IConfigFactory 
	{

		//function createConfig(id:String):IConfig;
		function createConfig(xml:XML):IConfig;

	}
	
}