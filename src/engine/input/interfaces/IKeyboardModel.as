package engine.input.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IKeyboardModel 
	{
		
		function hasKey(keyCode:int):Boolean;
		
		function setKey(keyCode:int):void;
		
		function unsetKey(keyCode:int):void;
		
	}
	
}