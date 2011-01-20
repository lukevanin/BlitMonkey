package engine.graphics.contexts 
{
	import engine.geometry.interfaces.ITransform;
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
		
		

		public function get area():Rectangle 
		{
			return this._canvas.area;
		}
		
		
		
		public function CanvasRenderContext(canvas:ICanvas) 
		{
			this._canvas = canvas;
		}
		

		
		/*public function blit(bitmap:BitmapData, sourceArea:Rectangle, destinationPoint:Point):void 
		{
			this._canvas.bitmapData.copyPixels(bitmap, sourceArea, destinationPoint, null, null, true);
		}*/
		
		public function blit(bitmapData:BitmapData, sourceArea:Rectangle, transform:ITransform):void 
		{
			this._canvas.bitmapData.copyPixels(bitmapData, sourceArea, transform.position, null, null, true);
		}
		

		
		
		public function draw(renderContext:IRenderContext, area:Rectangle, transform:ITransform):void 
		{
			renderContext.blit(this._canvas.bitmapData, area, transform);
		}
		
		
		
	}

}