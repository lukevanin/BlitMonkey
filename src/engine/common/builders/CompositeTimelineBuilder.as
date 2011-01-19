package engine.common.builders 
{
	import engine.common.controllers.CompositeTimelineController;
	import engine.common.facades.CompositeTimelineFacade;
	import engine.common.interfaces.ICompositeTimeline;
	import engine.common.interfaces.ITimeline;

	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeTimelineBuilder
	{
		
		public function CompositeTimelineBuilder() 
		{
			
		}
		
		
		
		public function buildTimeline(timelines:Vector.<ITimeline> = null):ICompositeTimeline
		{
			if (timelines == null)
				timelines = new Vector.<ITimeline>();
			
			var controller:ITimeline = new CompositeTimelineController(timelines);
			
			return new CompositeTimelineFacade(timelines, controller);
		}
		
	}

}