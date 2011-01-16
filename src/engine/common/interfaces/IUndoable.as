package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IUndoable 
	{
		
		function undo():void;
		
		
		function redo():void;
		
	}
	
}