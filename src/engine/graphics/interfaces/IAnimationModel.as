package engine.graphics.interfaces 
{
	import engine.common.interfaces.ICollection;
	import engine.geometry.interfaces.ITransform;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationModel
	{
		
		function get isPlaying():Boolean;
		
		function set isPlaying(isPlaying:Boolean):void;
		
		
		function get currentFrame():int;
		
		function set currentFrame(currentFrame:int):void;
		
		
		function get framesPerSecond():int;
		
		
		function get transform():ITransform;
		
		
		function get numFrames():int;
		
		
		function getFrame(index:int):*;
		
	}
	
}