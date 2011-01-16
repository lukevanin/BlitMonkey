package engine.graphics.interfaces 
{
	import engine.common.interfaces.ICollection;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationModel extends IGraphicModel, ICollection
	{
		
		function get isPlaying():Boolean;
		
		function set isPlaying(isPlaying:Boolean):void;
		
		
		function get currentFrame():int;
		
		function set currentFrame(currentFrame:int):void;
		
		
		//function get numFrames():int;
		
		
		function get framesPerSecond():int;
		
		//function set framesPerSecond(framesPerSecond:int):void;
		
		
		//function addFrame(frame:IAnimationFrame):void;
		
		//function getFrameAt(index:int):IAnimationFrame;
		
	}
	
}