package engine.framework.commands 
{
	import engine.common.interfaces.ICommand;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CallbackCommand implements ICommand 
	{
		
		private var _callback:Function;
		
		private var _parameters:Array;
		
		
		public function CallbackCommand(callback:Function, ...parameters) 
		{
			this._callback = callback;
			
			this._parameters = parameters;
		}
		
		
		
		
		public function execute():void 
		{
			this._callback.apply(null, this._parameters);
		}
		
	}

}