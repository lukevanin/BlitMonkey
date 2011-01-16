package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMementoOriginator 
	{
		
		function save():IMemento;
		
		function restore(memento:IMemento):void;
		
	}
	
}