package engine.framework.commands 
{
	import engine.common.interfaces.ICommand;
	import engine.framework.interfaces.ICompositeCommand;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeCommand implements ICompositeCommand 
	{
		
		private var _commands:Vector.<ICommand>;
		
		
		public function get numCommands():int 
		{
			return this._commands.length;
		}
		
		
		public function CompositeCommand(commands:Vector.<ICommand>) 
		{
			this._commands = commands;
		}
		

		public function execute():void 
		{
			this.executeCommands(this._commands);
		}
		
		
		
		private function executeCommands(commands:Vector.<ICommand>):void
		{
			for (var i:int = 0; i < commands.length; i++)
				commands[i].execute();
		}


		
		public function addCommand(command:ICommand):void 
		{
			this._commands.push(command);
		}
		
		
		public function getCommandAt(index:int):ICommand 
		{
			return this._commands[index];
		}
		
		
		public function removeCommandAt(index:int):ICommand 
		{
			return this._commands.splice(0, 1)[0];
		}
		
	}

}