package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface __ICompositeTimelineBuilder 
	{
		
		function buildTimeline(timelines:Vector.<ITimeline>):ICompositeTimeline;
		
	}
	
}