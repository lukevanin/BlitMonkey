package engine.graphics.interfaces 
{
	import engine.common.interfaces.ITimeline;

	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationController extends ITimeline 
	{

		
		function play():void;
		
		
		function stop():void;


		//function pause(pause:Boolean):void;
		
		
		//function playFrom(frame:int):void;
		
		
		//function playTo(frame:int):void;
		
		
		//function stopAt(frame:int):void;
		
		
	}
	
}