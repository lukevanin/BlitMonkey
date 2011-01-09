package engine.graphics.factories 
{
	import engine.common.utils.StringUtil;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.models.AnimationFrameModel;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationFrameFactory implements IObjectFactory 
	{
		
		public function AnimationFrameFactory() 
		{
			
		}
		

	
		
		public function createObject(config:IConfig):Object
		{
			var duration:Number = StringUtil.stringToFraction(config.getProperty("duration"));
			
			return new AnimationFrameModel(duration);
		}
		
		
		
		
		
	}

}