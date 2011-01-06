package engine.graphics.interfaces 
{
	import engine.config.interfaces.IAnimationFrameConfig;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationFrameFactory 
	{
		
		function createAnimationFrame(config:IAnimationFrameConfig):IAnimationFrame;
		
	}
	
}