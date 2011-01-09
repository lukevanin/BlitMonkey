package engine.config.models 
{
	import engine.collection.interfaces.IIterator;
	import engine.collection.interfaces.IDictionary;
	import engine.collection.Dictionary;
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IBitmapConfig;
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IConfigProvider;
	import engine.config.interfaces.IGameConfig;
	import engine.config.interfaces.ILibraryConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.graphics.interfaces.ICanvasConfig;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameConfigModel implements IGameConfig
	{

		private var _configs:IDictionary;
		
		
		public function GameConfigModel(configs:IDictionary)
		{
			this._configs = configs;
		}
		

		public function getConfig(type:Class):IConfigProvider 
		{
			return this._configs.getItem(type);
		}
		
		
	}

}