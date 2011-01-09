package engine.graphics.factories 
{
	import engine.config.interfaces.IConfig	import engine.graphics.facades.CanvasFacade;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasConfig;
	import engine.graphics.interfaces.ICanvasFactory;
	import engine.graphics.models.CanvasModel;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __CanvasFactory implements ICanvasFactory
	{
		
		private var _config:IConfig;
		
		
		public function CanvasFactory(config:IConfig) 
		{
			this._config = config;
		}
		

		public function createCanvas(id:String):ICanvas 
		{
			var config:ICanvasConfig = this._config.getConfig(id) as ICanvasConfig;
			
			var model:CanvasModel = CanvasModel.create(config.isTransparent, config.backgroundColour);
			
			var bitmap:BitmapData = new BitmapData(config.area.width, config.area.height, config.isTransparent, config.backgroundColour);
			
			var canvas:ICanvas = CanvasFacade.create(bitmap, config.pixelSnapping, config.smoothing, model);
			
			canvas.x = config.area.x;
			
			canvas.y = config.area.y;
			
			return canvas;
		}
		
		
		
		/*public static function create(config:ICanvasConfigCollection):CanvasFactory
		{
			return new CanvasFactory(config);
		}*/
		
	}

}