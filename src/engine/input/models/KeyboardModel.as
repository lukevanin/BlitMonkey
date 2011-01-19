package engine.input.models 
{
	import engine.common.Dictionary;
	import engine.common.interfaces.IDictionary;
	import engine.input.interfaces.IKeyboardModel;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class KeyboardModel implements IKeyboardModel 
	{
		
		private var _keys:IDictionary;
		
		
		public function KeyboardModel() 
		{
			this._keys = new Dictionary();
		}
		
		
		public function hasKey(keyCode:int):Boolean 
		{
			return this._keys.hasItem(keyCode);
		}
		
		public function setKey(keyCode:int):void 
		{
			this._keys.addItem(keyCode, true);
		}
		
		public function unsetKey(keyCode:int):void 
		{
			this._keys.removeItem(keyCode);
		}
		
	}

}