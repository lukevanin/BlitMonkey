package engine.graphics.builders 
{
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationSprite;
	import engine.graphics.interfaces.IAnimationSpriteBuilder;
	import engine.graphics.interfaces.ISpriteBuilder;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __AnimationSpriteBuilder implements IAnimationSpriteBuilder 
	{
		private var _spriteBuilder:ISpriteBuilder;
		
		
		public function AnimationSpriteBuilder(spriteBuilder:ISpriteBuilder) 
		{
			this._spriteBuilder = spriteBuilder;
		}
		

		public function buildSprite(animation:IAnimation):IAnimationSprite 
		{
			return new AnimationSprite
		}
		
	}

}