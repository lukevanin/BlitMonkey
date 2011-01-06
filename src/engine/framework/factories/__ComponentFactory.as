package engine.framework.factories 
{
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IGameConfig;
	import engine.framework.interfaces.IComponentFactory;
	import engine.framework.interfaces.IGameAssetFactory;
	import engine.framework.interfaces.IGameLibraries;
	import engine.framework.interfaces.IGameLibrariesFactory;
	import engine.framework.interfaces.IMediaFactory;
	import engine.graphics.factories.CanvasFactory;
	import engine.graphics.factories.CellFactory;
	import engine.graphics.factories.CellsFactory;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasConfig;
	import engine.graphics.interfaces.ICanvasFactory;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsFactory;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __ComponentFactory implements IComponentFactory
	{
		
		private var _gameConfig:IGameConfig;
		
		private var _mediaFactory:IMediaFactory;
		
		private var _canvasFactory:ICanvasFactory;
		
		private var _cellsFactory:ICellsFactory;
		
		
		public function ComponentFactory(gameConfig:IGameConfig, mediaFactory:IMediaFactory, canvasFactory:ICanvasFactory, cellsFactory:ICellsFactory) 
		{
			this._gameConfig = gameConfig;
			
			this._mediaFactory = mediaFactory;
			
			this._canvasFactory = canvasFactory;
			
			this._cellsFactory = cellsFactory;
		}
		


		public function getBitmap(id:String):BitmapData 
		{
			//return this._mediaFactory.createBitmap(id);
			return this._mediaProvider.getBitmap(id);
		}
		
		
		
		
		public function getCanvas(id:String):ICanvas
		{
			/*var config:ICanvasConfig = this._gameConfig.getCanvas(id);
			
			return this._canvasFactory.createCanvas(config);*/
			return this._canvasProvider
		}
		
		
		
		
		public function getCells(id:String):ICells 
		{
			var config:ICellsConfig = this._gameConfig.getCells(id);
			
			var bitmap:BitmapData = this.getBitmap(config.bitmap);
			
			return this._cellsFactory.createCells(config, bitmap);
		}
		
		
		
/*
		public function createAnimation(id:String):IAnimation
		{
			var config:IAnimationConfig = this._gameConfig.getAnimation(id);
			
			return this._animationFactory.create(config);
		}*/
		
		
		
		
		public static function create(gameConfig:IGameConfig):ComponentFactory
		{
			var libraries:IGameLibraries = GameLibrariesFactory.create(GameLibraryFactory.create()).createLibraries(gameConfig);
			
			var canvasFactory:ICanvasFactory = CanvasFactory.create();
			
			var assetFactory:IGameAssetFactory = GameAssetFactory.create(libraries);

			var mediaFactory:IGameMediaFactory = GameMediaFactory.create(gameConfig, assetFactory);
			
			var cellsFactory:ICellsFactory = CellsFactory.create(CellFactory.create());
			
			return new GameFactory(gameConfig, mediaFactory, canvasFactory, cellsFactory);
		}

		
	}

}