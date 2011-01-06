package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationModel 
	{
		
		function get currentFrame():int;
		
		function set currentFrame(currentFrame:int):void;
		
		function get numFrames():int;
		
		function addFrame(frame:IAnimationFrame):void;
		
		function getFrameAt(index:int):IAnimationFrame;
		
	}
	
}