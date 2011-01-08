package engine.config.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationConfig 
	{
		
		function get numFrames():int;
		
		//function addFrame(frame:IAnimationFrameConfig):void;
		
		function getFrameAt(index:int):IAnimationFrameConfig;
		
	}
	
}