package engine.graphics.controllers 
{
	import engine.graphics.interfaces.IAnimationController;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationController implements IAnimationController
	{
		
		private var _model:IAnimationModel;
		
		private var _lastUpdateTime:Number;
		
		
		public function AnimationController(model:IAnimationModel) 
		{
			this._model = model;
			
			this._lastUpdateTime = 0;
		}
		
		
		
		
		public function update(time:Number):void 
		{
			var delta:Number = time - this._lastUpdateTime;
			
			var frame:IAnimationFrame = this._model.getFrameAt(this._model.currentFrame);
			
			while (delta > frame.duration)
			{
				delta -= frame.duration;
				
				this.gotoNextFrame();
				
				frame = this._model.getFrameAt(this._model.currentFrame);
			}
			
			this._lastUpdateTime = time - delta;
			
			
			/*if (deltaTime >= currentFrame.time) 
			{
				this._model.currentFrame = (this._model.currentFrame >= (this._model.numFrames - 1)) ? 0 : this._currentFrameIndex + 1;
				
				var excessTime:Number = deltaTime - currentFrame.time;
				
				this._lastUpdateTime = time - excessTime; // TODO: adjust to account for time exceeded in last frame
			}*/			
		}
		
		
		
		
		private function gotoNextFrame():void
		{
			this._model.currentFrame = (this._model.currentFrame >= (this._model.numFrames - 1)) ? 0 : this._model.currentFrame + 1;			
		}
		
	}

}