package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimation extends IAnimationController, IGraphic
	{
		
		function get isPlaying():Boolean;
		
		
		function get currentFrame():int;
		
		
		function get numFrames():int;
		
		
		function get framesPerSecond():int;
		
		//function set framesPerSecond(framesPerSecond:int):void;
		
		
		
		//function getFrameAt(index:int):IAnimationFrame;

			
		
	}
	
}