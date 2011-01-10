package engine.graphics.facades 
{
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationSprite;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.interfaces.ISprite;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __AnimationSpriteFacade implements IAnimationSprite 
	{
		
		private var _sprite:ISprite;
		
		private var _animation:IAnimation;
		

		public function get currentFrame():int 
		{
			return this._animation.currentFrame;
		}
		
		public function get numFrames():int 
		{
			return this._animation.numFrames;
		}		
		
		public function get position():Point 
		{
			return this._sprite.position;
		}
		
		public function set position(position:Point):void 
		{
			this._sprite.position = position;
		}
		
		
		public function AnimationSpriteFacade(sprite:ISprite, animation:IAnimation) 
		{
			this._sprite = sprite;
			
			this._animation = animation;
		}
		

		public function getFrameAt(index:int):IAnimationFrame 
		{
			return this._animation.getFrameAt(index);
		}
		
		
		public function update(time:Number):void 
		{
			this._animation.update();
		}		

		
		public function draw(renderContext:IRenderContext, position:Point):void 
		{
			this._animation.
		}

		

		
	}

}