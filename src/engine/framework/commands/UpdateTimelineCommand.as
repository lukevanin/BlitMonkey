package engine.framework.commands 
{
	import engine.common.interfaces.ICommand;
	import engine.common.interfaces.ITimeline;
	import engine.common.utils.TimeUtil;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class UpdateTimelineCommand implements ICommand 
	{
		
		private var _timeline:ITimeline;
		
		
		public function UpdateTimelineCommand(timeline:ITimeline) 
		{
			this._timeline = timeline;
		}
		
		
		public function execute():void
		{
			this._timeline.update(TimeUtil.getSeconds());
		}
		
	}

}