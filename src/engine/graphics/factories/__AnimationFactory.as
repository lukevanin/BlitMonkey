package engine.graphics.factories 
{
	import engine.collection.interfaces.IIterator;
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.ICellsAnimationConfig;
	import engine.config.interfaces.IConfigProvider;
	import engine.config.interfaces.IGameConfig;
	import engine.config.models.AnimationConfigModel;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.graphics.controllers.AnimationController;
	import engine.graphics.facades.AnimationFacade;
	import engine.graphics.facades.CellsAnimationFacade;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationBuilder;
	import engine.graphics.interfaces.IAnimationController;
	import engine.graphics.interfaces.IAnimationFactory;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationFrameFactory;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsProvider;
	import engine.graphics.models.AnimationModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __AnimationFactory implements IAnimationFactory 
	{
		
		private var _animationBuilder:IAnimationBuilder;
		
		private var _frameFactory:IObjectFactory;
		
		
		public function AnimationFactory(animationBuilder:IAnimationBuilder, frameFactory:IObjectFactory) 
		{
			this._animationBuilder = animationBuilder;
			
			this._frameFactory = frameFactory;
		}
		
		

		
		public function createObject(config:IConfig):Object 
		{
			var iterator:IIterator = config.getConfigIterator();
			
			var frames:Vector.<IAnimationFrame> = new Vector.<IAnimationFrame>();
			
			while (iterator.hasNext)
			{
				frames.push(this._frameFactory.createAnimationFrame(iterator.value as IConfig));
				
				iterator.next();
			}
			
			return this._builder.buildAnimation(frames);
		}
		
		
	}

}