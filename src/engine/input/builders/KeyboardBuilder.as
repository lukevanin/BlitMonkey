package engine.input.builders 
{
	import engine.input.controllers.KeyboardController;
	import engine.input.interfaces.IKeyboard;
	import engine.input.interfaces.IKeyboardModel;
	import engine.input.models.KeyboardModel;
	import flash.display.Stage;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class KeyboardBuilder 
	{
		
		public function KeyboardBuilder() 
		{
			
		}
		
		
		
		public function buildKeyboard(stage:Stage):IKeyboard
		{
			return new KeyboardController(new KeyboardModel(), stage);
		}
		
	}

}