package demo.controllers 
{
	import demo.interfaces.IGameController;
	import engine.interfaces.IDisposable;
	import engine.interfaces.IRenderer;
	import flash.display.Bitmap;
	import flash.display.DisplayObject;
	import flash.display.DisplayObjectContainer;
	import flash.events.Event;
	import flash.utils.getTimer;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameController implements IGameController, IDisposable
	{
		
		private var _displayObject:DisplayObject;
		
		private var _displayObjectContainer:DisplayObjectContainer;
		
		private var _renderer:IRenderer;
		
		
		
		public function GameController(displayObject:DisplayObject, displayObjectContainer:DisplayObjectContainer, renderer:IRenderer) 
		{
			this._displayObject = displayObject;
			
			this._displayObjectContainer = displayObjectContainer;
			
			this._renderer = renderer;
			
			this._displayObjectContainer.addChild(displayObject); // TODO: update from model
			
			this.addEvents();
		}
		
		
		private function addEvents():void
		{
			this._displayObject.addEventListener(Event.ENTER_FRAME, this.onEnterFrame);
		}
		
		
		private function removeEvents():void
		{
			this._displayObject.removeEventListener(Event.ENTER_FRAME, this.onEnterFrame);
		}
		
		
		
		private function onEnterFrame(e:Event):void
		{
			this.update(getTimer() / 1000);
		}
		
		
		
		private function update(time:Number):void
		{
			this._renderer.update(time);
		}
		
		
		/* INTERFACE engine.interfaces.IDisposable */
		
		public function dispose():void 
		{
			this.removeEvents();
		}
		
	}

}