package engine.config.interfaces 
{
	import engine.collection.interfaces.IIterator;
	import engine.collection.interfaces.ISafeDictionary;
	import engine.graphics.interfaces.ICanvasConfig;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IGameConfig
	{		

		function getConfig(type:Class):IConfigProvider;
		
	}
	
}