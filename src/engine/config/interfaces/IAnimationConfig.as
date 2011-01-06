package engine.config.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationConfig 
	{
		
		function get cells():String;
		
		function get numFrames():int;
		
		function getFrameAt(index:int):IAnimationFrameConfig;
		
	}
	
}