package engine.graphics.renderers 
{
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.IRenderer;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasRenderer implements IRenderer
	{
		
		
		private var _canvas:ICanvas;
		
		
		
		public function CanvasRenderer(canvas:ICanvas) 
		{
			
		}
		

		
		public function blit(bitmap:BitmapData, sourceArea:Rectangle, destinationPoint:Point):void 
		{
			this._canvas.bitmapData.copyPixels(bitmap, sourceArea, destinationPoint, null, null, true);
		}
		
		
		
	}

}