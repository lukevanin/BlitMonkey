package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimation extends IAnimationController
	{
		
		function get currentFrame():int;
		
		
		function get numFrames():int;
		
		
		function getFrameAt(index:int):IAnimationFrame;

			
		
	}
	
}