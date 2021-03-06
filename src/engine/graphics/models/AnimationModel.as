package engine.graphics.models 
{
	import engine.common.Collection;
	import engine.common.interfaces.ICollection;
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.ICells;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationModel implements IAnimationModel
	{
		
		private var _transform:ITransform;
		
		private var _isPlaying:Boolean;
		
		private var _framesPerSecond:int;
		
		private var _currentFrame:int;
		
		private var _frames:ICollection;
		
		
		
		/*public function get position():Point
		{
			return this._graphic.position;
		}*/
		
		/*public function set position(position:Point):void
		{
			this._graphic.position = position;
		}*/
		
		
		public function get transform():ITransform
		{
			return this._transform;
		}
		
		
		public function get isPlaying():Boolean
		{
			return this._isPlaying;
		}
		
		public function set isPlaying(isPlaying:Boolean):void
		{
			this._isPlaying = isPlaying;
		}
		
		
		
		public function get framesPerSecond():int
		{
			return this._framesPerSecond;
		}
		
		
		
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
			return this._frames.numItems;
		}
		
		
		
		public function AnimationModel(transform:ITransform, frames:ICollection, framesPerSecond:int, currentFrame:int = 0, isPlaying:Boolean = false) 
		{
			this._transform = transform.clone();
			
			this._frames = frames.clone();
			
			this._framesPerSecond = framesPerSecond;
			
			this._currentFrame = currentFrame;
			
			this._isPlaying = isPlaying;
		}
		

		
		/*public function addItem(item:*):void 
		{
			this._frames.addItem(item);
		}*/
		
		public function getFrame(index:int):* 
		{
			return this._frames.getItemAt(index);
		}
		
		/*public function removeItemAt(index:int):* 
		{
			return this._frames.removeItemAt(index);
		}*/

		
		
		/*public function addFrame(frame:IAnimationFrame):void
		{
			this._frames.push(frame);
		}*/
		
		
		/*public function getFrameAt(index:int):IAnimationFrame 
		{
			return this._frames[index];
		}*/
		
		
		
		
		
	}

}