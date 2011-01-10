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
			
			//trace("AnimationController > update: t:" + time.toFixed(2) + " d:" + delta.toFixed(2) + " duration:" + frame.duration.toFixed(2));
			
			while (delta > frame.duration)
			{
				//trace("AnimationController > update: d:" + delta.toFixed(2) + " f:" + this._model.currentFrame + " duration:" + frame.duration.toFixed(2)); 
				
				delta -= frame.duration;
				
				this.gotoNextFrame();
				
				frame = this._model.getFrameAt(this._model.currentFrame);
			}
			
			this._lastUpdateTime = time - delta;
						
			//trace("AnimationController > update:" + this._model.currentFrame);		
		}
		
		
		
		
		private function gotoNextFrame():void
		{
			this._model.currentFrame = (this._model.currentFrame >= (this._model.numFrames - 1)) ? 0 : this._model.currentFrame + 1;			
			
			//trace("AnimationController > gotoNextFrame:" + this._model.currentFrame);
		}
		
	}

}