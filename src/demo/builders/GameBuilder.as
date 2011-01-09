package demo.builders 
{
	import demo.facades.GameFacade;
	import engine.collection.interfaces.IDictionary;
	import engine.collection.Dictionary;
	import engine.framework.builders.ClassLibraryBuilder;
	import engine.framework.enums.LibraryTypeEnum;
	import engine.framework.factories.AssetFactory;
	import engine.framework.factories.ClassLibraryFactory;
	import engine.framework.factories.ObjectTypeFactory;
	import engine.framework.factories.XmlConfigFactory;
	import engine.framework.interfaces.IAssetFactory;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IConfigFactory;
	import engine.framework.interfaces.IGame;
	import engine.framework.interfaces.IGameBuilder;
	import engine.framework.interfaces.IObjectFactory;
	import engine.framework.interfaces.IObjectProvider;
	import engine.framework.interfaces.IObjectsProvider;
	import engine.framework.interfaces.ITimeline;
	import engine.framework.providers.ConfigProvider;
	import engine.framework.providers.ObjectProvider;
	import engine.framework.providers.ObjectsProvider;
	import engine.graphics.builders.AnimationBuilder;
	import engine.graphics.builders.BitmapBuilder;
	import engine.graphics.builders.CanvasBuilder;
	import engine.graphics.builders.CellAnimationBuilder;
	import engine.graphics.builders.CellAnimationFrameBuilder;
	import engine.graphics.builders.CellBuilder;
	import engine.graphics.builders.CellsBuilder;
	import engine.graphics.contexts.CanvasRenderContext;
	import engine.graphics.enums.AnimationTypeEnum;
	import engine.graphics.factories.AnimationFrameFactory;
	import engine.graphics.factories.BitmapFactory;
	import engine.graphics.factories.CanvasFactory;
	import engine.graphics.factories.CellAnimationFactory;
	import engine.graphics.factories.CellAnimationFrameFactory;
	import engine.graphics.factories.CellFactory;
	import engine.graphics.factories.CellsFactory;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationBuilder;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.IDrawable;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.providers.CanvasProvider;
	import engine.graphics.providers.CellsProvider;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.geom.Point;
	import flash.geom.Rectangle;


	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameBuilder implements IGameBuilder 
	{
		
		private var _container:DisplayObjectContainer;
		
		private var _configXml:XML;
		
		private var _configNamespace:Namespace;
		
		//private var _schemaXml:XML;
		
		
		
		public function GameBuilder(container:DisplayObjectContainer, configXml:XML, configNamespace:Namespace) 
		{
			this._container = container;
			
			this._configXml = configXml;
			
			this._configNamespace = configNamespace;

	
		}
		
		
		

		public function buildGame():IGame 
		{
			var configFactory:IConfigFactory = new XmlConfigFactory(this._configNamespace)
			
			//var config:IConfig = new ConfigProvider(configFactory.createConfig(this._configXml));
			var config:IConfig = configFactory.createConfig(this._configXml);
		
			
			var libraryFactories:IDictionary = new Dictionary();
			
			libraryFactories.addItem(LibraryTypeEnum.CLASS, new ClassLibraryFactory(new ClassLibraryBuilder()));
			
			var libraryProvider:IObjectProvider = new ObjectProvider(config, new ObjectTypeFactory(libraryFactories));

			
			var canvasProvider:IObjectProvider = new ObjectProvider(config, new CanvasFactory(new CanvasBuilder()));
			
			
			var assetFactory:IAssetFactory = new AssetFactory(libraryProvider);
			
			
			var bitmapProvider:IObjectProvider = new ObjectProvider(config, new BitmapFactory(new BitmapBuilder(assetFactory)));
			
			
			var cellsProvider:IObjectProvider = new ObjectProvider(config, new CellsFactory(new CellsBuilder(bitmapProvider), new CellFactory(new CellBuilder())));
			
			
			var animationBuilder:IAnimationBuilder = new AnimationBuilder();
			
			var animationFrameFactory:IObjectFactory = new AnimationFrameFactory();

			var animationFactories:IDictionary = new Dictionary();
			
			animationFactories.addItem(AnimationTypeEnum.CELL, new CellAnimationFactory(new CellAnimationFrameFactory(new CellAnimationFrameBuilder(), animationFrameFactory), animationBuilder, cellsProvider, new CellAnimationBuilder()));
			
			var animationProvider:IObjectProvider = new ObjectProvider(config, new ObjectTypeFactory(animationFactories));
			
			
			var objects:IObjectsProvider = new ObjectsProvider();
			
			objects.addType(ICanvas, canvasProvider);
			
			objects.addType(BitmapData, bitmapProvider);
			
			objects.addType(IAnimation, animationProvider);
			
			
			var canvas:ICanvas = objects.getObject("stageCanvas", ICanvas) as ICanvas; // .getAttributeAs("area", IRectangle) as Rectangle;
			
			var animation:IAnimation = objects.getObject("abuIdleAnimation", IAnimation) as IAnimation;

			
			var renderContext:IRenderContext = new CanvasRenderContext(canvas);
			
			//var timeline:ITimeline = new CompositeTimeline();
			
			
			(animation as IDrawable).draw(renderContext, new Point(50, 50));
			
			
			this._container.addChild(canvas as DisplayObject);
			
			
			
			//var config:IGameConfig = new XmlGameConfigFactory(XmlFactoryTypeProvider.create()).createConfig(this._configXml) as IGameConfig; 
			
			
			/*var libraryFactory:ILibraryFactory = new LibraryFactory(config.getConfig(ILibraryConfig));
			
			var libraryProvider:ILibraryProvider = new LibraryProvider(libraryFactory);
			
			var assetFactory:IAssetFactory = new AssetFactory(libraryProvider);

			
			var canvasFactory:ICanvasFactory = new CanvasFactory(config.getConfig(ICanvasConfig));
			
			var canvasProvider:ICanvasProvider = new CanvasProvider(canvasFactory);
			
			
			var bitmapFactory:IBitmapFactory = new BitmapFactory(config.getConfig(IBitmapConfig), assetFactory);
			
			var bitmapProvider:IBitmapProvider = new BitmapProvider(bitmapFactory);
			
			
			var cellsFactory:ICellsFactory = new CellsFactory(config, CellFactory.create(), bitmapProvider);
			
			var cellsProvider:ICellsProvider = new CellsProvider(cellsFactory);
			
			
			var animationFactory:IAnimationFactory = new AnimationFactory(config, new AnimationFrameFactory(), cellsProvider);
			
			var animationProvider:IAnimationProvider = new AnimationProvider(animationFactory);
			
			
			var componentProvider:IComponentProvider = new ComponentProvider(canvasProvider, bitmapProvider, animationProvider);
			
			
			var canvas:ICanvas = componentProvider.getCanvas("stageCanvas");
			
			var renderContext:IRenderContext = new CanvasRenderContext(canvas);
			
			var animation:IAnimation = componentProvider.getAnimation("abuIdleAnimation");
			
			(animation as IDrawable).draw(renderContext, new Point(50, 50));

	
			
			
			this._container.addChild(canvas as DisplayObject);*/
			
			
			
			/*
			 * 
			var mainGameLoop:ICommand = GameLoopCommand.create();
			
			gameLoop.add(UpdatePositions.create());
			
			gameLoop.add(CheckCollisions.create());
			
			gameLoop.add(RunAi.create());
			
			gameLoop.add(RenderCommand.create(canvasRenderer, drawables));
			
			*/			
			
			
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