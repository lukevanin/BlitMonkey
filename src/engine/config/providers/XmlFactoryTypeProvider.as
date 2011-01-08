package engine.config.providers 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.collection.SafeDictionary;
	import engine.config.enums.XmlConfigEnum;
	import engine.config.factories.XmlAnimationConfigFactory;
	import engine.config.factories.XmlBitmapConfigFactory;
	import engine.config.factories.XmlCanvasConfigFactory;
	import engine.config.factories.XmlCellsConfigFactory;
	import engine.config.factories.XmlGameConfigFactory;
	import engine.config.factories.XmlLibraryConfigFactory;
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IBitmapConfig;
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IFactoryType;
	import engine.config.interfaces.IFactoryTypeProvider;
	import engine.config.interfaces.IGameConfig;
	import engine.config.interfaces.ILibraryConfig;
	import engine.config.models.FactoryTypeModel;
	import engine.graphics.interfaces.ICanvasConfig;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlFactoryTypeProvider implements IFactoryTypeProvider
	{
		
		private var _types:ISafeDictionary;
		
		
		public function XmlFactoryTypeProvider(types:ISafeDictionary) 
		{
			this._types = types;
		}
		
		
		
		public function hasType(name:String):Boolean
		{
			return this._types.hasItem(name);
		}
		
		
		public function getType(name:String):IFactoryType
		{
			return this._types.getItem(name) as IFactoryType;
		}
		
		
		
		
		public static function create():XmlFactoryTypeProvider
		{
			var types:ISafeDictionary = new SafeDictionary();
			
			//this._types.addItem(XmlConfigEnum.CONFIG, new FactoryTypeModel(IGameConfig, new XmlGameConfigFactory()));
			
			types.addItem(XmlConfigEnum.LIBRARY.toString(), new FactoryTypeModel(ILibraryConfig, new XmlLibraryConfigFactory()));
			
			types.addItem(XmlConfigEnum.CANVAS.toString(), new FactoryTypeModel(ICanvasConfig, new XmlCanvasConfigFactory()));
			
			types.addItem(XmlConfigEnum.BITMAP.toString(), new FactoryTypeModel(IBitmapConfig, new XmlBitmapConfigFactory()));
			
			types.addItem(XmlConfigEnum.CELLS.toString(), new FactoryTypeModel(ICellsConfig, new XmlCellsConfigFactory()));
			
			types.addItem(XmlConfigEnum.ANIMATION.toString(), new FactoryTypeModel(IAnimationConfig, new XmlAnimationConfigFactory()));
			
			return new XmlFactoryTypeProvider(types);
		}
		
	}

}