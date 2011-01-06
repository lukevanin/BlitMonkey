package engine.config.factories 
{
	import engine.config.enums.LibraryTypeEnum;
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.config.interfaces.IBitmapConfig;
	import engine.config.interfaces.ICellConfig;
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IConfigFactory;
	import engine.config.interfaces.IGameConfig;
	import engine.config.interfaces.ILibraryConfig;
	import engine.config.models.AnimationConfigModel;
	import engine.config.models.AnimationFrameConfigModel;
	import engine.config.models.BitmapConfigModel;
	import engine.config.models.CanvasConfigModel;
	import engine.config.models.CellConfigModel;
	import engine.config.models.CellsConfigModel;
	import engine.config.models.ClassLibraryConfigModel;
	import engine.config.models.GameConfigModel;
	import engine.graphics.interfaces.ICanvasConfig;

	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlConfigFactory implements IConfigFactory
	{
		
		public function XmlConfigFactory() 
		{
			
		}
		
		
		
		public function createGameConfig(xml:XML):IGameConfig
		{
			return GameConfigModel.create(xml, this);
		}
		
		
		public function createLibraryConfig(xml:XML):ILibraryConfig
		{
			var type:String = xml.@type.toString();
			
			switch (type)
			{
				case LibraryTypeEnum.CLASS:
					return ClassLibraryConfigModel.create(xml);
					
				default:
					throw new Error("Unsupported type " + type);
			}
		}
		
		
		
		public function createCanvasConfig(xml:XML):ICanvasConfig
		{
			return CanvasConfigModel.create(xml);
		}
		
		
		public function createBitmapConfig(xml:XML):IBitmapConfig
		{
			return BitmapConfigModel.create(xml);
		}
		
		
		
		public function createCellsConfig(xml:XML):ICellsConfig
		{
			return CellsConfigModel.create(xml, this);
		}
		
		
		public function createCellConfig(xml:XML):ICellConfig
		{
			return CellConfigModel.create(xml);
		}
		
		
		
		public function createAnimationConfig(xml:XML):IAnimationConfig
		{
			return AnimationConfigModel.create(xml, this);
		}
		
		
		public function createAnimationFrameConfig(xml:XML):IAnimationFrameConfig
		{
			return AnimationFrameConfigModel.create(xml);
		}
		
		
		
		public static function create():XmlConfigFactory
		{
			return new XmlConfigFactory();
		}
		
	}

}