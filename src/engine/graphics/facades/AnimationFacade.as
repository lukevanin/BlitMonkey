package engine.graphics.facades 
{
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationController;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationFacade implements IAnimation
	{
		
		private var _model:IAnimationModel;
		
		private var _controller:IAnimationController;
		

		public function get currentFrame():int 
		{
			return this._model.currentFrame;
		}
		
		
		public function get numFrames():int 
		{
			return this._model.numFrames;
		}
		
		
		
		
		public function AnimationFacade(model:IAnimationModel, controller:IAnimationController) 
		{
			this._model = model;
			
			this._controller = controller;
		}
		

		
		public function getFrameAt(index:int):IAnimationFrame 
		{
			return this._model.getFrameAt(index);
		}
		
		
		public function update(time:Number):void 
		{
			this._controller.update(time);
		}
		


		
	}

}