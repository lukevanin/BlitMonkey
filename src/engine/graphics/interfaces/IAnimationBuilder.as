package engine.graphics.interfaces 
{
	import engine.common.interfaces.ICollection;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationBuilder 
	{
		
		function buildAnimation(frames:ICollection, framesPerSecond:int, currentFrame:int = 0, isPlaying:Boolean = false):IAnimation;
		
	}
	
}