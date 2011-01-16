package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICommand extends IObservable
	{
		
		/**
		 * True if the command is executing
		 */
		function get isExecuting():Boolean; 		
		
		
		/**
		 * 
		 */
		function execute():void;
		
	}
	
}