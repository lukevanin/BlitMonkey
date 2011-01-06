package engine.graphics.factories 
{
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationFrameFactory;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.models.AnimationFrameModel;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationFrameFactory implements IAnimationFrameFactory 
	{
		
		public function AnimationFrameFactory() 
		{
			
		}
		

		public function createAnimationFrame(config:IAnimationFrameConfig):IAnimationFrame 
		{
			return new AnimationFrameModel(config.duration, config.cell);
		}
		
		
		public static function create():AnimationFrameFactory
		{
			return new AnimationFrameFactory();
		}
		
	}

}