package engine.graphics.providers 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.collection.SafeDictionary;
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFactory;
	import engine.graphics.interfaces.IAnimationProvider;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationProvider implements IAnimationProvider
	{
		
		private var _animations:ISafeDictionary;
		
		private var _animationFactory:IAnimationFactory;
		
		
		public function AnimationProvider(animationFactory:IAnimationFactory) 
		{
			this._animations = new SafeDictionary();
			
			this._animationFactory = animationFactory;
		}
		

		
		public function getAnimation(id:String):IAnimation 
		{
			if (!this._animations.hasItem(id))
				this._animations.addItem(id, this._animationFactory.createAnimation(id));
			
			return this._animations.getItem(id) as IAnimation;
		}
		
		
		
		
		/*public static function create(animationFactory:IAnimationFactory):AnimationProvider
		{
			return new AnimationProvider(animationFactory);
		}*/
		
	}

}