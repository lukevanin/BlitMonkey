package engine.graphics.factories 
{
	import engine.common.StringUtil;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasBuilder;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasFactory implements IObjectFactory
	{
		
		//private var _config:IConfig;
		
		private var _canvasBuilder:ICanvasBuilder;
		
		
		//public function CanvasFactory(config:IConfig, canvasBuilder:ICanvasBuilder) 
		public function CanvasFactory(canvasBuilder:ICanvasBuilder) 
		{
			//this._config = config;
			
			this._canvasBuilder = canvasBuilder;
		}
		
		
		
		public function createObject(config:IConfig):Object
		{
			return this.createCanvas(config);
		}
		
		
		private function createCanvas(config:IConfig):ICanvas
		{
			//var config:IConfig = this._config.getConfig(id);
			
			
			var area:Rectangle = StringUtil.stringToRectangle(config.getProperty("area"));
			
			var pixelSnapping:String = config.getProperty("pixelSnapping");
			
			var transparent:Boolean = StringUtil.stringToBoolean(config.getProperty("transparent"));
			
			var smoothing:Boolean = StringUtil.stringToBoolean(config.getProperty("smoothing"));
			
			var backgroundColour:uint = StringUtil.stringToUint(config.getProperty("backgroundColour"));			
			
			
			return this._canvasBuilder.buildCanvas(area, pixelSnapping, transparent, smoothing, backgroundColour);
		}
		
	}

}