package engine.graphics.factories 
{
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IAnimationConfigCollection;
	import engine.config.models.AnimationConfigModel;
	import engine.graphics.controllers.AnimationController;
	import engine.graphics.facades.AnimationFacade;
	import engine.graphics.interfaces.IAnimation;
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
	public class AnimationFactory implements IAnimationFactory 
	{
		
		private var _config:IAnimationConfigCollection;
		
		private var _frameFactory:IAnimationFrameFactory;
		
		private var _cellsProvider:ICellsProvider;
		
		
		public function AnimationFactory(config:IAnimationConfigCollection, frameFactory:IAnimationFrameFactory, cellsProvider:ICellsProvider) 
		{
			this._config = config;
			
			this._frameFactory = frameFactory;
			
			this._cellsProvider = cellsProvider;
		}
		
		
		
		

		public function createAnimation(id:String):IAnimation 
		{
			var config:IAnimationConfig = this._config.getAnimation(id);
			

			var model:IAnimationModel = new AnimationModel(new Vector.<IAnimationFrame>());

			for (var i:int = 0; i < config.numFrames; i++)
				model.addFrame(this._frameFactory.createAnimationFrame(config.getFrameAt(i)));
			
				
			var controller:IAnimationController = new AnimationController(model);
			
			
			return new AnimationFacade(model, controller);
		}
		
		
		
		
		public static function create(config:IAnimationConfigCollection, frameFactory:IAnimationFrameFactory, cellsProvider:ICellsProvider):AnimationFactory
		{
			return new AnimationFactory(config, frameFactory, cellsProvider);
		}
		
	}

}