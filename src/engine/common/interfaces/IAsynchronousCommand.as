package engine.common.interfaces 
{
	import flash.events.IEventDispatcher;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	[Event(name="complete", type="flash.events.Event")]
	public interface IAsynchronousCommand extends ICommand, IEventDispatcher
	{
		
		
		function get isExecuting():Boolean;
		
	}
	
}