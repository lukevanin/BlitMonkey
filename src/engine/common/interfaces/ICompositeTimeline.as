package engine.common.interfaces 
{
	import engine.common.interfaces.ITimeline;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICompositeTimeline extends ITimeline
	{
		
		function get numTimelines():int;
		
		function addTimeline(timeline:ITimeline):void;
		
		function getTimelineAt(index:int):ITimeline;
		
		function removeTimelineAt(index:int):ITimeline;
		
	}
	
}