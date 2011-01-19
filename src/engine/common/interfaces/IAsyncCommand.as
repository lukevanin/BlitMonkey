package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAsyncCommand extends ICommand, IObservable
	{
		
		function get isExecuting():Boolean;
		
		
		
		
	}
	
}