package engine.graphics.builders 
{
	import engine.graphics.facades.BitmapSpriteFacade;
	import engine.graphics.interfaces.IBitmapSprite;
	import engine.graphics.interfaces.IBitmapSpriteBuilder;
	import engine.graphics.interfaces.ISprite;
	import engine.graphics.interfaces.ISpriteBuilder;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapSpriteBuilder implements IBitmapSpriteBuilder
	{
		
		private var _spriteBuilder:ISpriteBuilder;
		
		
		
		public function BitmapSpriteBuilder(spriteBuilder:ISpriteBuilder) 
		{
			this._spriteBuilder = spriteBuilder;
		}
		
		
		
		public function buildSprite(bitmap:BitmapData, position:Point = null, area:Rectangle = null):IBitmapSprite
		{
			if (position == null)
				position = new Point();
				
			if (area == null)
				area = bitmap.rect;
			
			return new BitmapSpriteFacade(this._spriteBuilder.buildSprite(position), area, bitmap);
		}
		
	}

}