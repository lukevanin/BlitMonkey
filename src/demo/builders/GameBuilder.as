package demo.builders 
{
	import demo.facades.GameFacade;
	import engine.common.interfaces.ICommand;
	import engine.common.interfaces.IDictionary;
	import engine.common.Dictionary;
	import engine.common.interfaces.IStoppableCommand;
	import engine.framework.builders.ClassLibraryBuilder;
	import engine.framework.builders.CompositeTimelineBuilder;
	import engine.framework.commands.CompositeCommand;
	import engine.framework.commands.EventCommand;
	import engine.framework.commands.UpdateTimelineCommand;
	import engine.framework.enums.LibraryTypeEnum;
	import engine.framework.facades.CompositeTimelineFacade;
	import engine.framework.factories.AssetFactory;
	import engine.framework.factories.ClassLibraryFactory;
	import engine.framework.factories.ObjectTypeFactory;
	import engine.framework.factories.XmlConfigFactory;
	import engine.framework.interfaces.IAssetFactory;
	import engine.framework.interfaces.ICompositeCommand;
	import engine.framework.interfaces.ICompositeTimeline;
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
	import engine.graphics.builders.CompositeGraphicBuilder;
	import engine.graphics.commands.DrawGraphicCommand;
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
	import engine.graphics.interfaces.ICompositeGraphic;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.providers.CanvasProvider;
	import engine.graphics.providers.CellsProvider;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.events.Event;
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
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
			
			var compositeTimeline:ICompositeTimeline = new CompositeTimelineBuilder().buildTimeline(new Vector.<ITimeline>);
			
			compositeTimeline.addTimeline(animation);
			
			
			var compositeGraphic:ICompositeGraphic = new CompositeGraphicBuilder().buildGraphic(new Vector.<IGraphic>());
			
			compositeGraphic.addGraphic(animation as IGraphic);
			
			
			this._container.addChild(canvas as DisplayObject);
			
			
			var updateCommand:ICompositeCommand = new CompositeCommand(new Vector.<ICommand>);
			
			updateCommand.addCommand(new UpdateTimelineCommand(compositeTimeline));
			
			updateCommand.addCommand(new DrawGraphicCommand(compositeGraphic, renderContext, new Point(320, 180)));
			
			
			
			var loop:IStoppableCommand = new EventCommand(this._container, Event.ENTER_FRAME, updateCommand);

			loop.execute();
			
			
			return new GameFacade(null);
		}
		
	}

}