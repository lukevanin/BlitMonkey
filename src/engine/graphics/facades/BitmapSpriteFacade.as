package engine.graphics.facades 
{
	import engine.graphics.interfaces.IBitmapSprite;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.interfaces.ISprite;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapSpriteFacade implements IBitmapSprite 
	{
		
		private var _sprite:ISprite;
		
		private var _bitmapArea:Rectangle;
		
		private var _bitmap:BitmapData;
		
		
		public function get position():Point 
		{
			return this._sprite.position;
		}
		
		public function set position(position:Point):void 
		{
			this._sprite.position = position;
		}
		
		
		public function BitmapSpriteFacade(sprite:ISprite, bitmapArea:Rectangle, bitmap:BitmapData) 
		{
			this._sprite = sprite;
			
			this._bitmapArea = bitmapArea;
			
			this._bitmap = bitmap;
		}
		


		
		public function draw(renderContext:IRenderContext, position:Point):void 
		{
			renderContext.blit(this._bitmap, this._bitmapArea, position.add(this._sprite.position));
		}
		
	}

}