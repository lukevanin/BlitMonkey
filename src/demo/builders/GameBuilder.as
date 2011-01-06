package demo.builders 
{
	import demo.facades.GameFacade;
	import demo.libraries.GameLib;
	import engine.config.factories.XmlConfigFactory;
	import engine.config.interfaces.IGameConfig;
	import engine.framework.factories.AssetFactory;
	import engine.framework.factories.BitmapFactory;
	import engine.framework.factories.LibraryFactory;
	import engine.framework.interfaces.IAssetFactory;
	import engine.framework.interfaces.IBitmapFactory;
	import engine.framework.interfaces.IComponentProvider;
	import engine.framework.interfaces.IGame;
	import engine.framework.interfaces.IGameBuilder;
	import engine.framework.interfaces.ILibraryFactory;
	import engine.framework.interfaces.ILibraryProvider;
	import engine.framework.providers.BitmapProvider;
	import engine.framework.providers.ComponentProvider;
	import engine.framework.providers.LibraryProvider;
	import engine.graphics.factories.AnimationFactory;
	import engine.graphics.factories.AnimationFrameFactory;
	import engine.graphics.factories.CanvasFactory;
	import engine.graphics.factories.CellFactory;
	import engine.graphics.factories.CellsFactory;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFactory;
	import engine.graphics.interfaces.IAnimationProvider;
	import engine.graphics.interfaces.IBitmapProvider;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasFactory;
	import engine.graphics.interfaces.ICanvasProvider;
	import engine.graphics.interfaces.ICanvasRenderer;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsFactory;
	import engine.graphics.interfaces.ICellsProvider;
	import engine.graphics.interfaces.IDrawable;
	import engine.graphics.interfaces.IDrawableAnimation;
	import engine.graphics.interfaces.IRenderer;
	import engine.graphics.interfaces.ISprites;
	import engine.graphics.providers.AnimationProvider;
	import engine.graphics.providers.CanvasProvider;
	import engine.graphics.providers.CellsProvider;
	import engine.graphics.renderers.CanvasRenderer;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.geom.Point;

	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameBuilder implements IGameBuilder 
	{
		
		private var _container:DisplayObjectContainer;
		
		private var _configXml:XML;
		
		
		
		public function GameBuilder(container:DisplayObjectContainer, configXml:XML) 
		{
			this._container = container;
			
			this._configXml = configXml;
		}
		
		
		

		public function buildGame():IGame 
		{
			var config:IGameConfig = XmlConfigFactory.create().createGameConfig(this._configXml); 
			
			//var librariesFactory:ILibrariesFactory = LibrariesFactory.create(LibraryFactory.create());
			
			var libraryFactory:ILibraryFactory = LibraryFactory.create(config);
			
			var libraryProvider:ILibraryProvider = LibraryProvider.create(libraryFactory);
			
			var assetFactory:IAssetFactory = AssetFactory.create(libraryProvider);

			
			var canvasFactory:ICanvasFactory = CanvasFactory.create(config);
			
			var canvasProvider:ICanvasProvider = CanvasProvider.create(canvasFactory);
			
			
			var bitmapFactory:IBitmapFactory = BitmapFactory.create(config, assetFactory);
			
			var bitmapProvider:IBitmapProvider = BitmapProvider.create(bitmapFactory);
			
			
			var cellsFactory:ICellsFactory = CellsFactory.create(config, CellFactory.create(), bitmapProvider);
			
			var cellsProvider:ICellsProvider = CellsProvider.create(cellsFactory);
			
			
			var animationFactory:IAnimationFactory = AnimationFactory.create(config, AnimationFrameFactory.create(), cellsProvider);
			
			var animationProvider:IAnimationProvider = AnimationProvider.create(animationFactory);
			
			
			var componentProvider:IComponentProvider = ComponentProvider.create(canvasProvider, bitmapProvider, animationProvider);
			
			
			//var cells:ICells = gameFactory.createCells("abuCells");
		
			var canvas:ICanvas = componentProvider.getCanvas("stageCanvas");
			
			var canvasRenderer:ICanvasRenderer = CanvasRenderer.create(canvas);
			
			var animation:IAnimation = componentProvider.getAnimation("abuIdleAnimation");
			
			//cells.getCellAt(0).render(canvas, new Point(50, 50));
			
			if (animation is IDrawable)
				(animation as IDrawable).draw(canvasRenderer, new Point(50, 50));

				
			/*
			 * 
			var mainGameLoop:ICommand = GameLoopCommand.create();
			
			gameLoop.add(UpdatePositions.create());
			
			gameLoop.add(CheckCollisions.create());
			
			gameLoop.add(RunAi.create());
			
			gameLoop.add(RenderCommand.create(canvasRenderer, drawables));
			
			*/
			
			
			this._container.addChild(canvas as DisplayObject);
			
			
			
			/*var width:int = 640;
			
			var height:int = 480;
			
			
			var backgroundBitmapData:BitmapData = (new ArtLibrary.BACKGROUND() as Bitmap).bitmapData;
			
			var animatedBitmapData:BitmapData = (new ArtLibrary.ABU() as Bitmap).bitmapData;
			
			
			
			var cells:Vector.<ICell> = new Vector.<ICell>();
			
			cells.push(new CellModel(new Rectangle(5, 4, 44, 40), new Point(33, 40)));
			
			cells.push(new CellModel(new Rectangle(57, 2, 44, 41), new Point(33, 41)));		
			
			cells.push(new CellModel(new Rectangle(106, 1, 43, 42), new Point(33, 42)));
			
			cells.push(new CellModel(new Rectangle(152, 1, 43, 42), new Point(33, 42)));
			
			cells.push(new CellModel(new Rectangle(199, 1, 44, 42), new Point(33, 42)));
			
			
			var frameTime:Number = 1 / 15;
			
			var frames:Vector.<IFrame> = new Vector.<IFrame>();
			
			frames.push(new FrameModel(1 / 7, cells[0]));
			
			frames.push(new FrameModel(1 / 15, cells[1]));
			
			frames.push(new FrameModel(1 / 15, cells[2]));
			
			frames.push(new FrameModel(1 / 15, cells[3]));
			
			frames.push(new FrameModel(1 / 7, cells[4]));
			
			frames.push(new FrameModel(1 / 15, cells[3]));
			
			frames.push(new FrameModel(1 / 15, cells[2]));
			
			frames.push(new FrameModel(1 / 15, cells[1]));
			
			
			var position:Point = new Point(50, 50);
			
			var sprite:ISprite = new AnimatedSpriteProvider(position, animatedBitmapData, frames);
			
			
			
			
			
			var sprites:ISprites = new SpritesFacade(new Vector.<ISprite>);
			
			sprites.add(new BackgroundSpriteProvider(backgroundBitmapData, new Rectangle(0, 0, width, height), new Point(0, 0)));
			
			sprites.add(sprite);
			
			
			
			
			var renderBitmap:BitmapData = new BitmapData(width, height, false, 0xff00ff);
			
			var renderer:IRenderer = new SpriteRendererProvider(renderBitmap, sprites);
			
			
			//output.copyPixels(sprite, areas[i], position.subtract(offsets[i]), null, null, false);
			
			
			var bitmap:Bitmap = new Bitmap(renderBitmap, PixelSnapping.ALWAYS, false);
			
			var gameController:IGameController = new GameController(bitmap, container, renderer);*/
			
			
			//return new GameFacade(gameController);
			return new GameFacade(null);
		}
		
	}

}