package engine.graphics.providers 
{
	import engine.interfaces.IAnimatedSprite;
	import engine.interfaces.ICell;
	import engine.interfaces.IFrame;
	import engine.interfaces.ISprite;
	import flash.display.BitmapData;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimatedSpriteProvider implements IAnimatedSprite
	{
		private var _position:Point;
		
		private var _sourceBitmap:BitmapData;
		
		private var _frames:Vector.<IFrame>;
		
		
		private var _updateTime:Number;
		
		private var _currentFrameIndex:int;
		
		private var _currentFrame:IFrame;
		
		private var _maxFrame:int;
	
		
		public function AnimatedSpriteProvider(position:Point, sourceBitmap:BitmapData, frames:Vector.<IFrame>, currentFrameIndex:int = 0) 
		{
			this._position = position.clone();
			
			this._sourceBitmap = sourceBitmap;
			
			this._frames = frames;
			
			this._updateTime = 0;
			
			this._currentFrameIndex = currentFrameIndex;
			
			this._currentFrame = this._frames[this._currentFrameIndex];
			
			this._maxFrame = this._frames.length - 1;
		}
		

		
		/* INTERFACE engine.interfaces.ISprite */
		
		public function update(time:Number, destinationBitmap:BitmapData):void 
		{
			/*var frame:IFrame = this._frames[this._currentFrame];*/
			
			if ((time - this._updateTime) >= this._currentFrame.time) 
			{
				this._currentFrameIndex = (this._currentFrameIndex < this._maxFrame) ? this._currentFrameIndex + 1 : 0;
				
				this._currentFrame = this._frames[this._currentFrameIndex];
				
				this._updateTime = time; // TODO: adjust to account for time exceeded in last frame
			}
				
			//var cell:ICell = this._cells[frame.index];
			
			destinationBitmap.copyPixels(this._sourceBitmap, this._currentFrame.area, this._position.subtract(this._currentFrame.offset), null, null, true);
		}
		
	}

}