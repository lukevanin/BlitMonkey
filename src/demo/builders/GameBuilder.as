package demo.builders 
{
	import demo.facades.GameFacade;
	import demo.libraries.GameLib;
	import engine.common.Collection;
	import engine.common.Grid;
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.IGrid;
	import engine.common.interfaces.ITileset;
	import engine.common.utils.BitmapUtil;
	import engine.common.utils.TimeUtil;
	import engine.framework.interfaces.IGame;
	import engine.framework.interfaces.IGameBuilder;
	import engine.graphics.builders.TilesetAnimationBuilder;
	import engine.graphics.builders.BitmapBuilder;
	import engine.graphics.builders.CanvasBuilder;
	import engine.graphics.builders.CellBitmapBuilder;
	import engine.graphics.builders.IndexableGraphicAnimationBuilder;
	import engine.graphics.builders.TilesetMapBuilder;
	import engine.graphics.builders.TilesetBuilder;
	import engine.graphics.contexts.CanvasRenderContext;
	import engine.graphics.facades.IndexableGraphicAnimationFrameFacade;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IBitmapBuilder;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasBuilder;
	import engine.graphics.interfaces.ICellBitmapBuilder;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMap;
	import engine.graphics.interfaces.IRenderContext;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.display.PixelSnapping;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;



	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameBuilder implements IGameBuilder 
	{
		
		private var _container:DisplayObjectContainer;
		
		//private var _configXml:XML;
		
		//private var _configNamespace:Namespace;
		
		//private var _schemaXml:XML;
		
		
		
		//public function GameBuilder(container:DisplayObjectContainer, configXml:XML, configNamespace:Namespace) 
		public function GameBuilder(container:DisplayObjectContainer) 
		{
			this._container = container;
		}
		
		
		

		public function buildGame():IGame 
		{
			var stageArea:Rectangle = new Rectangle(0, 0, 320, 200);
			
			
			var paveBitmapData:BitmapData = BitmapUtil.getBitmapData(new GameLib.TILE_PAVE());
			
			var characterBitmapData:BitmapData = BitmapUtil.getBitmapData(new GameLib.JACK_SPRITE_SHEET());
			
			
			var paveTileset:ITileset = new TilesetBuilder().buildTileset(paveBitmapData, new Point(40, 40));
			
			var characterTileset:ITileset = new TilesetBuilder().buildTileset(characterBitmapData, new Point(40, 40));
			
			
			//var bitmapBuilder:BitmapBuilder = new BitmapBuilder();
			
			//var bitmap:IBitmap = bitmapBuilder.buildBitmap(characterBitmapData);
			
			
			//var cellBitmapBuilder:CellBitmapBuilder = new CellBitmapBuilder();
			
			//var tileGraphic:IIndexableGraphic = cellBitmapBuilder.buildCellBitmap(tileBitmapData, new Point(40, 40));
			
			//var tileGraphics:ICollection = new Collection();
			
			//tileGraphics.addItem(bitmapBuilder.buildBitmap(tileBitmapData, new Rectangle(0, 0, 40, 40)));
			
			
			
			
			//var characterGraphic:IIndexableGraphic = cellBitmapBuilder.buildCellBitmap(characterBitmapData, new Point(40, 40), characterGraphicModel);

			
			//var characterSouthGraphicModel:IGraphicModel = new GraphicModel(new Point());
			
			//var walkSouthFrames:ICollection = new Collection();
			
			//walkSouthFrames.addItem(bitmapBuilder.buildBitmap(characterBitmapData, new Rectangle(40, 0, 40, 40), characterSouthGraphicModel));
			
			//walkSouthFrames.addItem(bitmapBuilder.buildBitmap(characterBitmapData, new Rectangle(80,0,40,40), characterSouthGraphicModel));
			
			//var walkSouthAnimation:IAnimation = new AnimationBuilder().buildAnimation(walkSouthFrames, 15, characterSouthGraphicModel);

			
			//var characterNorthGraphicModel:IGraphicModel = new GraphicModel(new Point());
			
			//var walkNorthFrames:ICollection = new Collection();
			
			//walkNorthFrames.addItem(bitmapBuilder.buildBitmap(characterBitmapData, new Rectangle(160, 0, 40, 40), characterNorthGraphicModel));
			
			//walkNorthFrames.addItem(bitmapBuilder.buildBitmap(characterBitmapData, new Rectangle(200,0,40,40), characterNorthGraphicModel));
			
			

			
			var walkNorthAnimation:IAnimation = new TilesetAnimationBuilder(characterTileset).buildAnimation(Collection.fromArray([4, 5]), 8);
			
			var walkSouthAnimation:IAnimation = new TilesetAnimationBuilder(characterTileset).buildAnimation(Collection.fromArray([1, 2]), 8);
			
			
			
			

			var mapGrid:IGrid = Grid.fromArray([
					[10, 11, 11, 11, 12],
					[20, 21, 21, 21, 22],
					[30, 31, 31, 31, 32]
				]);  			
						
			var map:IMap = new TilesetMapBuilder(paveTileset).buildMap(mapGrid, new Point(70, 70), new Point(40, 40));
			
			
			var canvasBuilder:ICanvasBuilder = new CanvasBuilder();
			
			var canvas:ICanvas = canvasBuilder.buildCanvas(stageArea, PixelSnapping.ALWAYS, false, false, 0xffff00ff);
			
			
			var renderContext:IRenderContext = new CanvasRenderContext(canvas);
			
			
			//map.draw(renderContext, new Point(0, 0));
			
			//tileGraphic.draw(renderContext, new Point(0, 0));
			
			//cells.index = 0;
			
			//cells.draw(renderContext, new Point(40, 40));
			
			//animation.draw(renderContext, new Point(80, 80));
			
			
			//walkNorthAnimation.position = new Point(120, 200);
			
			//walkNorthAnimation.play();
			
			
			//walkSouthAnimation.position = new Point(40, 0);
			
			walkSouthAnimation.play();
			
			this._container.addEventListener(Event.ENTER_FRAME, function(e:Event):void { 
					//map.offset = new Point(map.offset + 1, 0);
					
					//map.offsetBy(new Point(-1, -1));
					map.draw(renderContext);
					
					//canvas.clear();
					
					//walkSouthAnimation.position = new Point(walkSouthAnimation.position.x, walkSouthAnimation.position.y + 1);
					walkSouthAnimation.update(TimeUtil.getSeconds()); 
					walkSouthAnimation.draw(renderContext); 
				
					//walkNorthAnimation.position = new Point(walkNorthAnimation.position.x, walkNorthAnimation.position.y - 1);
					//walkNorthAnimation.update(TimeUtil.getSeconds()); 
					//walkNorthAnimation.draw(renderContext); 
				} );
			
			this._container.addChild(canvas as DisplayObject);
			
			return new GameFacade(null);
			
			
			//var libraryFactories:IDictionary = new Dictionary();
			
			//libraryFactories.addItem(LibraryTypeEnum.CLASS, new ClassLibraryFactory(new ClassLibraryBuilder()));
			
			//var libraryProvider:IObjectProvider = new ObjectProvider(config, new ObjectTypeFactory(libraryFactories));

			
			//var library:ILibrary = new ClassLibraryBuilder().buildClassLibrary();
			
			
			/*var configFactory:IConfigFactory = new XmlConfigFactory(this._configNamespace)
			
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

			
			var spriteBuilder:ISpriteBuilder = new SpriteBuilder();
			
			
			var backgroundBitmap:BitmapData = objects.getObject("backgroundBitmap", BitmapData) as BitmapData;
			
			var backgroundSprite:ISprite = new BitmapSpriteBuilder(spriteBuilder).buildSprite(backgroundBitmap);
			
			
			var monkeyIdleAnimation:IAnimation = objects.getObject("abuIdleAnimation", IAnimation) as IAnimation;
			
			var monkeyRunAnimation:IAnimation = objects.getObject("abuRunRightAnimation", IAnimation) as IAnimation;
			
			var monkeyStandSprite:ISprite = new GraphicSpriteBuilder(spriteBuilder).buildSprite(monkeyIdleAnimation as IGraphic, new Point(105, 160));
			
			var monkeyRunSprite:ISprite = new GraphicSpriteBuilder(spriteBuilder).buildSprite(monkeyRunAnimation as IGraphic, new Point(240, 180));
			
			
			var renderContext:IRenderContext = new CanvasRenderContext(canvas);
			
			var compositeTimeline:ICompositeTimeline = new CompositeTimelineBuilder().buildTimeline(new Vector.<ITimeline>);
			
			compositeTimeline.addTimeline(monkeyIdleAnimation);
			
			compositeTimeline.addTimeline(monkeyRunAnimation);
			
			
			var compositeGraphic:ICompositeGraphic = new CompositeGraphicBuilder().buildGraphic(new Vector.<IGraphic>());
			
			compositeGraphic.addGraphic(backgroundSprite);
			
			compositeGraphic.addGraphic(monkeyStandSprite);
			
			compositeGraphic.addGraphic(monkeyRunSprite);
			
			
			this._container.addChild(canvas as DisplayObject);
			
			
			var updateCommand:ICompositeCommand = new CompositeCommand(new Vector.<ICommand>);
			
			updateCommand.addCommand(new UpdateTimelineCommand(compositeTimeline));
			
			updateCommand.addCommand(new DrawGraphicCommand(compositeGraphic, renderContext, new Point(0, 0)));
			
			
			
			var loop:IStoppableCommand = new EventCommand(this._container, Event.ENTER_FRAME, updateCommand);

			loop.execute();
			
			
			return new GameFacade(null);*/
		}
		
	}

}