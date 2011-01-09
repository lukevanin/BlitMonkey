package engine.framework.builders 
{
	import engine.framework.controllers.CompositeTimelineController;
	import engine.framework.facades.CompositeTimelineFacade;
	import engine.framework.interfaces.ICompositeTimeline;
	import engine.framework.interfaces.ICompositeTimelineBuilder;
	import engine.framework.interfaces.ITimeline;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeTimelineBuilder implements ICompositeTimelineBuilder
	{
		
		public function CompositeTimelineBuilder() 
		{
			
		}
		
		
		
		public function buildTimeline(timelines:Vector.<ITimeline>):ICompositeTimeline
		{
			//var timelines:Vector.<ITimeline> = new Vector.<ITimeline>();
			
			var controller:ITimeline = new CompositeTimelineController(timelines);
			
			return new CompositeTimelineFacade(timelines, controller);
		}
		
	}

}