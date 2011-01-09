package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IStoppableCommand extends ICommand
	{
		
		function get isExecuting():Boolean;
		
		function stop():void;
		
	}
	
}