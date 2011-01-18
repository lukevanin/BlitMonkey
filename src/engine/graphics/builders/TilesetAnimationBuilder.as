package engine.graphics.builders 
{
	import engine.common.errors.BuildError;
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.ITileset;
	import engine.common.utils.TestUtil;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.graphics.controllers.AnimationController;
	import engine.graphics.facades.AnimationFacade;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationBuilder;
	import engine.graphics.interfaces.IAnimationController;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.models.AnimationModel;
	import engine.graphics.views.TilesetAnimationView;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetAnimationBuilder
	{
		
		private var _tileset:ITileset;
		
		
		public function TilesetAnimationBuilder(tileset:ITileset) 
		{
			this._tileset = tileset;
		}
		
		
		
		public function buildAnimation(frames:ICollection, framesPerSecond:int, currentFrame:int = 0, isPlaying:Boolean = false, transform:ITransform = null):IAnimation
		{
			TestUtil.assert("number of frames must be greater than 0", frames.numItems > 0);
			
			TestUtil.assert("frames per second must be greater than 0", framesPerSecond > 0);
			
			TestUtil.assert("current frame " + currentFrame + " out of range " + frames.numItems, (currentFrame >= 0) && (currentFrame < frames.numItems));
			
			if (transform == null)
				transform = new Transform();
			
			var model:IAnimationModel = new AnimationModel(transform, frames, framesPerSecond, currentFrame, isPlaying);

			var view:IGraphicView = new TilesetAnimationView(model, this._tileset);
			
			var controller:IAnimationController = new AnimationController(model);
			
			return new AnimationFacade(model, view, controller);
		}
		
	}

}