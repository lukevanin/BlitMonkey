package engine.input.controllers 
{
	import engine.common.interfaces.IDisposable;
	import engine.input.interfaces.IKeyboard;
	import engine.input.interfaces.IKeyboardModel;
	import flash.display.Stage;
	import flash.events.IEventDispatcher;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class KeyboardController implements IKeyboard, IDisposable
	{
		
		private var _model:IKeyboardModel;
		
		private var _stage:Stage;
		
	
		
		
		public function KeyboardController(model:IKeyboardModel, stage:Stage) 
		{
			this._model = model;
			
			this._stage = stage;
			
			this.addEvents();
		}
		
		
		private function addEvents():void
		{
			this._stage.addEventListener(KeyboardEvent.KEY_DOWN, this.onKeyDown);
			this._stage.addEventListener(KeyboardEvent.KEY_UP, this.onKeyUp);
		}
		
		
		private function removeEvents():void
		{
			this._stage.removeEventListener(KeyboardEvent.KEY_DOWN, this.onKeyDown);
			this._stage.removeEventListener(KeyboardEvent.KEY_UP, this.onKeyUp);
		}
		
		
		
		private function onKeyDown(e:KeyboardEvent):void
		{
			if (!this._model.hasKey(e.keyCode))
				this._model.setKey(e.keyCode);
		}
		
		
		
		private function onKeyUp(e:KeyboardEvent):void
		{
			if (this._model.hasKey(e.keyCode))
				this._model.unsetKey(e.keyCode);
		}
		
		
		
		/* INTERFACE engine.input.interfaces.IKeyboard */
		
		public function isKeyDown(keyCode:int):Boolean 
		{
			return this._model.hasKey(keyCode);
		}
		
		
		
		/* INTERFACE engine.common.interfaces.IDisposable */
		
		public function dispose():void 
		{
			this.removeEvents();
		}
		
		
	}

}