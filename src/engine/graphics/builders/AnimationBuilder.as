package engine.graphics.builders 
{
	import engine.graphics.controllers.AnimationController;
	import engine.graphics.facades.AnimationFacade;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationBuilder;
	import engine.graphics.interfaces.IAnimationController;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.models.AnimationModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationBuilder implements IAnimationBuilder
	{
		
		public function AnimationBuilder() 
		{
			
		}
		
		
		
		public function buildAnimation(frames:Vector.<IAnimationFrame>):IAnimation
		{
			var model:IAnimationModel = new AnimationModel(frames);

			var controller:IAnimationController = new AnimationController(model);
			
			return new AnimationFacade(model, controller);
		}
		
	}

}