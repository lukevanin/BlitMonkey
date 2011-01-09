package engine.graphics.contexts 
{
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import engine.graphics.interfaces.ICanvas;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasRenderContext implements IRenderContext
	{
		
		
		private var _canvas:ICanvas;
		
		
		
		public function CanvasRenderContext(canvas:ICanvas) 
		{
			this._canvas = canvas;
		}
		

		
		public function blit(bitmap:BitmapData, sourceArea:Rectangle, destinationPoint:Point):void 
		{
			this._canvas.bitmapData.copyPixels(bitmap, sourceArea, destinationPoint, null, null, true);
		}
		
		
		
	}

}