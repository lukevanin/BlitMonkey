package engine.framework.interfaces 
{
	import engine.common.interfaces.ICommand;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICompositeCommand extends ICommand
	{
		
		function get numCommands():int;
		
		function addCommand(command:ICommand):void;
		
		function getCommandAt(index:int):ICommand;
		
		function removeCommandAt(index:int):ICommand;
		
	}
	
}