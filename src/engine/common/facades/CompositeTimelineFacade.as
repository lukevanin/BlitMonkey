package engine.common.facades 
{
	import engine.common.interfaces.ICompositeTimeline;
	import engine.common.interfaces.IDictionary;
	import engine.common.interfaces.ITimeline;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeTimelineFacade implements ICompositeTimeline
	{
		private var _timelines:Vector.<ITimeline>;
		
		private var _controller:ITimeline;
		
		
		public function get numTimelines():int 
		{
			return this._timelines.length;
		}

		
		public function CompositeTimelineFacade(timelines:Vector.<ITimeline>, controller:ITimeline) 
		{
			this._timelines = timelines;
			
			this._controller = controller;
		}
		
		
		public function addTimeline(timeline:ITimeline):void 
		{
			this._timelines.push(timeline);
		}
		
		public function getTimelineAt(index:int):ITimeline 
		{
			return this._timelines[index];
		}
		
		public function removeTimelineAt(index:int):ITimeline 
		{
			return this._timelines.splice(index, 1)[0];
		}
		
		public function update(time:Number):void 
		{
			this._controller.update(time);
		}
		
	}

}