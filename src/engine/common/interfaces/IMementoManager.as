package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMementoManager 
	{
		
		/**
		 * True if any memento has been saved
		 */
		function get hasMemento():Boolean;
		
		
		/**
		 * Saves current state from originator
		 */
		function save():void;
		
		
		/**
		 * Restores last state to the originator
		 */
		function restore():void;
		
	}
	
}