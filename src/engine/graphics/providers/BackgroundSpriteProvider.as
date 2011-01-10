package engine.graphics.providers 
{
	import engine.interfaces.IBackgroundSprite;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BackgroundSpriteProvider implements IBackgroundSprite 
	{
		
		
		private var _sourceBitmap:BitmapData;
		
		private var _area:Rectangle;
		
		private var _offset:Point;
		
		
		
		public function BackgroundSpriteProvider(sourceBitmap:BitmapData, area:Rectangle, offset:Point) 
		{
			this._sourceBitmap = sourceBitmap;
			
			this._area = area.clone();
			
			this._offset = offset.clone();
		}
		
		
		/* INTERFACE engine.interfaces.IBackgroundSprite */
		
		public function update(time:Number, destinationBitmap:BitmapData):void 
		{
			destinationBitmap.copyPixels(this._sourceBitmap, this._area, this._offset, null, null, true);
		}
		
	}

}