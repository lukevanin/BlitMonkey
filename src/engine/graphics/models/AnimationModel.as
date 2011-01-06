package engine.graphics.models 
{
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.ICells;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationModel implements IAnimationModel
	{
		
		private var _currentFrame:int;
		
		private var _frames:Vector.<IAnimationFrame>;
		
		
		
		public function get currentFrame():int 
		{
			return this._currentFrame;
		}
		
		public function set currentFrame(currentFrame:int):void
		{
			this._currentFrame = currentFrame;
		}
		
		
		public function get numFrames():int 
		{
			return this._frames.length;
		}
		
		
		
		
		public function AnimationModel(frames:Vector.<IAnimationFrame>, currentFrame:int = 0) 
		{
			this._frames = frames;
			
			this._currentFrame = currentFrame;
		}

		
		
		public function addFrame(frame:IAnimationFrame):void
		{
			this._frames.push(frame);
		}
		
		
		public function getFrameAt(index:int):IAnimationFrame 
		{
			return this._frames[index];
		}
		
		
		
		
		
	}

}