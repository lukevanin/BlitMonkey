package engine.graphics.builders 
{
	import engine.common.errors.BuildError;
	import engine.common.interfaces.ICollection;
	import engine.common.utils.TestUtil;
	import engine.graphics.controllers.AnimationController;
	import engine.graphics.facades.AnimationFacade;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationBuilder;
	import engine.graphics.interfaces.IAnimationController;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.IGraphicModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.models.AnimationModel;
	import engine.graphics.views.AnimationView;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationBuilder
	{
		
		public function AnimationBuilder() 
		{
			
		}
		
		
		
		public function buildAnimation(frames:ICollection, framesPerSecond:int, graphicModel:IGraphicModel, currentFrame:int = 0, isPlaying:Boolean = false):IAnimation
		{
			TestUtil.assert("number of frames must be greater than 0", frames.numItems > 0);
			
			TestUtil.assert("frames per second must be greater than 0", framesPerSecond > 0);
			
			TestUtil.assert("current frame " + currentFrame + " out of range " + frames.numItems, (currentFrame >= 0) && (currentFrame < frames.numItems));
			
			var model:IAnimationModel = new AnimationModel(graphicModel, frames, framesPerSecond, currentFrame, isPlaying);

			var view:IGraphicView = new AnimationView(model);
			
			var controller:IAnimationController = new AnimationController(model);
			
			return new AnimationFacade(model, view, controller);
		}
		
	}

}