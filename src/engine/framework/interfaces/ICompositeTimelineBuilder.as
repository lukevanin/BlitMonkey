package engine.framework.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICompositeTimelineBuilder 
	{
		
		function buildTimeline(timelines:Vector.<ITimeline>):ICompositeTimeline;
		
	}
	
}