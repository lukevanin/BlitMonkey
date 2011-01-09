package engine.framework.controllers 
{
	import engine.common.interfaces.IDictionary;
	import engine.framework.interfaces.ICompositeTimeline;
	import engine.framework.interfaces.ITimeline;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeTimelineController implements ITimeline
	{
		private var _timelines:Vector.<ITimeline>
		
		public function CompositeTimelineController(timelines:Vector.<ITimeline>) 
		{
			this._timelines = timelines;
		}
		

		public function update(time:Number):void 
		{
			this.updateTimelines(this._timelines, time);
		}
		
		
		private function updateTimelines(timelines:Vector.<ITimeline>, time:Number):void
		{
			for (var i:int = 0; i < timelines.length; i++)
				timelines[i].update(time);
		}
		
		
	}

}