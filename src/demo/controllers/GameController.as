package demo.controllers 
{
	import demo.interfaces.IGameController;
	import engine.framework.interfaces.IDisposable;
	import engine.graphics.interfaces.IRenderContext;
	import engine.interfaces.IDisposable;
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
		
		private var _renderContext:IRenderContext;
		
		
		
		public function GameController(displayObject:DisplayObject, displayObjectContainer:DisplayObjectContainer, renderContext:IRenderContext) 
		{
			this._displayObject = displayObject;
			
			this._displayObjectContainer = displayObjectContainer;
			
			this._renderContext = renderContext;
			
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