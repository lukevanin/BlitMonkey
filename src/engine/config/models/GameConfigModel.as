package engine.config.models 
{
	import engine.collection.interfaces.IIterator;
	import engine.collection.interfaces.ISafeDictionary;
	import engine.collection.SafeDictionary;
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IBitmapConfig;
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IConfigFactory;
	import engine.config.interfaces.IGameConfig;
	import engine.config.interfaces.ILibraryConfig;
	import engine.graphics.interfaces.ICanvasConfig;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameConfigModel implements IGameConfig
	{
		
		private var _libraries:ISafeDictionary;
		
		private var _canvases:ISafeDictionary;
		
		private var _bitmaps:ISafeDictionary;
		
		private var _cells:ISafeDictionary;
		
		private var _animations:ISafeDictionary;
		
		
		
		
		public function GameConfigModel() 
		{
		}
		
		
		
		public function parseXml(xml:XML, factory:IConfigFactory):void
		{
			this.parseLibraryXml(xml, factory);
			
			this.parseCanvasXml(xml, factory);
			
			this.parseBitmapXml(xml, factory);
			
			this.parseCellsXml(xml, factory);
			
			this.parseAnimationXml(xml, factory);
		}
		
		
		private function parseLibraryXml(xml:XML, factory:IConfigFactory):void
		{
			this._libraries = new SafeDictionary();
			
			for each (var libraryXml:XML in xml.library)
				this._libraries.addItem(libraryXml.@id.toString(), factory.createLibraryConfig(libraryXml));
		}
		
		
		private function parseCanvasXml(xml:XML, factory:IConfigFactory):void
		{
			this._canvases = new SafeDictionary();
			
			for each (var canvasXml:XML in xml.canvas)
				this._canvases.addItem(canvasXml.@id.toString(), factory.createCanvasConfig(canvasXml));
		}
		
		
		private function parseBitmapXml(xml:XML, factory:IConfigFactory):void
		{
			this._bitmaps = new SafeDictionary();
			
			for each (var bitmapXml:XML in xml.bitmap)
				this._bitmaps.addItem(bitmapXml.@id.toString(), factory.createBitmapConfig(bitmapXml));
		}
		
		
		private function parseCellsXml(xml:XML, factory:IConfigFactory):void
		{
			this._cells = new SafeDictionary();
			
			for each (var cellsXml:XML in xml.cells)
				this._cells.addItem(cellsXml.@id.toString(), factory.createCellsConfig(cellsXml));
		}
		
		
		private function parseAnimationXml(xml:XML, factory:IConfigFactory):void
		{
			this._animations = new SafeDictionary();
			
			for each (var animationXml:XML in xml.animation)
				this._animations.addItem(animationXml.@id.toString(),  factory.createAnimationConfig(animationXml));
		}
		
	
		
		public function getLibrary(id:String):ILibraryConfig
		{
			return this._libraries.getItem(id) as ILibraryConfig;
		}
		
		
		public function getLibraryIterator():IIterator
		{
			return this._libraries.getIterator();
		}
		
		
		
		public function getCanvas(id:String):ICanvasConfig
		{
			return this._canvases.getItem(id);
		}
		
		
		public function getBitmap(id:String):IBitmapConfig
		{
			return this._bitmaps.getItem(id) as IBitmapConfig;
		}
		
		/*public function getBitmaps():IIterator
		{
			return this._bitmaps.getIterator();
		}*/
		
		
		public function getCells(id:String):ICellsConfig
		{
			return this._cells.getItem(id) as ICellsConfig;
		}
		
		/*public function getCells():IIterator
		{
			return this._cells.getIterator();
		}*/
		
		
		public function getAnimation(id:String):IAnimationConfig
		{
			return this._animations.getItem(id) as IAnimationConfig;
		}
		
		/*public function getAnimations():IIterator
		{
			return this._animations.getIterator();
		}*/
		
		
		
		public static function create(xml:XML, factory:IConfigFactory):GameConfigModel
		{
			var config:GameConfigModel = new GameConfigModel();
			
			config.parseXml(xml, factory);
			
			return config;
		}
	}

}