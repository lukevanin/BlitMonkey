package engine.graphics.builders 
{
	import engine.graphics.facades.CanvasFacade;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasBuilder;
	import engine.graphics.models.CanvasModel;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasBuilder implements ICanvasBuilder
	{
		
		
		public function CanvasBuilder() 
		{
		}

		

		public function buildCanvas(area:Rectangle, pixelSnapping:String, transparent:Boolean, smoothing:Boolean, backgroundColour:uint):ICanvas 
		{
			
			var model:CanvasModel = CanvasModel.create(transparent, backgroundColour);
			
			var bitmap:BitmapData = new BitmapData(area.width, area.height, transparent, backgroundColour);
			
			var canvas:ICanvas = new CanvasFacade(bitmap, pixelSnapping, smoothing, model);
			
			canvas.x = area.x;
			
			canvas.y = area.y;
			
			return canvas;
		}
		
		
		
		/*public static function create(config:ICanvasConfigCollection):CanvasFactory
		{
			return new CanvasFactory(config);
		}*/
		
	}

}