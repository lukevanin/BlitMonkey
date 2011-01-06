package 
{
	import demo.builders.GameBuilder;
	import demo.libraries.GameLib;
	import engine.framework.interfaces.IGame;
	import engine.framework.interfaces.IGameBuilder;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObjectContainer;
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	[SWF(width = "800", height = "600", framerate = "60", backgroundColor = "#ffffff")]
	public class Demo extends Sprite 
	{
		
		private var _game:IGame;
		
		
		public function Demo():void 
		{
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			
			this.opaqueBackground = 0xffffff;
			
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			this._game = this.createGame(this);		
		}
		
		
		
		private function createGame(container:DisplayObjectContainer):IGame
		{
			var builder:IGameBuilder = new GameBuilder(container, XML(new GameLib.CONFIG()));
			
			return builder.buildGame();	
			
			return null;
		}
		
		
	}
	
}