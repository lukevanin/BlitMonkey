package engine.framework.commands 
{
	import engine.common.interfaces.ICommand;
	import engine.common.interfaces.IStoppableCommand;
	import engine.framework.interfaces.IDisposable;
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class EventCommand implements IStoppableCommand, IDisposable
	{
		
		private var _eventDispatcher:IEventDispatcher;
		
		private var _type:String;
		
		private var _command:ICommand;
		
		private var _isExecuting:Boolean;
		
		
		public function get isExecuting():Boolean 
		{
			return this._isExecuting;
		}
		
		
		public function EventCommand(eventDispatcher:IEventDispatcher, type:String, command:ICommand) 
		{
			this._eventDispatcher = eventDispatcher;
			
			this._type = type;
			
			this._command = command;
		}
		
		
		public function execute():void
		{
			if (this._isExecuting)
				return; // already running
			
			this._isExecuting = true;
			
			this._eventDispatcher.addEventListener(this._type, this.onEvent);
		}
		
		
		private function onEvent(e:Event):void
		{
			this._command.execute();
		}
		
		
		
		public function stop():void 
		{
			if (!this._isExecuting)
				return; // already stopped
				
			this._isExecuting = false;
			
			this._eventDispatcher.removeEventListener(this._type, this.onEvent);
		}
		
		
		public function dispose():void
		{
			this.stop();
		}
		
	}

}