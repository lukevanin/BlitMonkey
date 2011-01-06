package engine.providers 
{
	import engine.interfaces.IRenderer;
	import engine.interfaces.ISprite;
	import engine.interfaces.ISprites;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class SpriteRendererProvider implements IRenderer
	{
		
		private var _bitmap:BitmapData;
		
		private var _sprites:ISprites;
		
		
		public function SpriteRendererProvider(bitmap:BitmapData, sprites:ISprites) 
		{
			this._bitmap = bitmap;
			
			this._sprites = sprites;
		}
		
		
		
		
		/* INTERFACE engine.interfaces.ISprites */
		
		public function update(time:Number):void 
		{
			this._bitmap.lock();
			
			for (var i:int = 0; i < this._sprites.numSprites; i++)
				this._sprites.getAt(i).update(time, this._bitmap);
				
			this._bitmap.unlock();
		}
		
		
		
		
		
		
	}

}