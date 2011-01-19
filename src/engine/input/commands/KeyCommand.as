package engine.input.commands 
{
	import engine.common.interfaces.ICommand;
	import engine.input.interfaces.IKeyboard;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class KeyCommand implements ICommand 
	{
		
		private var _keyboard:IKeyboard;
		
		private var _keyCode:int;
		
		private var _command:ICommand;
		
		
		public function KeyCommand(keyboard:IKeyboard, keyCode:int, command:ICommand) 
		{
			this._keyboard = keyboard;
			
			this._keyCode = keyCode;
			
			this._command = command;
		}
		
		
		
		public function execute():void
		{
			if (this._keyboard.isKeyDown(this._keyCode))
				this._command.execute();
		}
		
	}

}