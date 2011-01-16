package engine.graphics 
{
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.interfaces.ITile;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class Tile implements ITile 
	{
		
		private var _bitmapData:BitmapData;
		
		private var _area:Rectangle;
		
		
		public function Tile(bitmapData:BitmapData, area:Rectangle) 
		{
			this._bitmapData = bitmapData;
			
			this._area = area;
		}
		

		
		
		public function draw(renderContext:IRenderContext, transform:ITransform):void 
		{
			renderContext.blit(this._bitmapData, this._area, transform);
		}
		
		
		
		
	}

}