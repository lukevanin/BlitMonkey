package engine.graphics.facades 
{
	import engine.graphics.models.CanvasModel;
	import flash.display.Bitmap;
	import flash.display.PixelSnapping;
	import engine.graphics.interfaces.ICanvas;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasFacade extends Bitmap implements ICanvas
	{
		
		
		//private var _bitmap:Bitmap;
		
		private var _model:CanvasModel;
		
		
		/*public function get x(x:Number):void 
		{
			return this._bitmap.x;
		}*/
		
		/*public function set x():Number 
		{
			this._bitmap.x = x;
		}*/
		
		/*public function get y():Number 
		{
			return this._bitmap.y;
		}*/
		
		/*public function set y(y:Number):void 
		{
			this._bitmap.y = y;
		}*/
		
		/*public function get width():Number 
		{
			return this._bitmap.width;
		}*/
		
		/*public function get height():Number 
		{
			return this._bitmap.height;
		}*/
		
		public function get isTransparent():Boolean 
		{
			return this._model.isTransparent;
		}
		
		public function get backgroundColour():uint 
		{
			return this._model.backgroundColour;
		}
		
		/*public function get bitmapData():BitmapData 
		{
			return this._bitmap.bitmapData;
		}*/
		
		/*public function get pixelSnapping():PixelSnapping 
		{
			return this._bitmap.pixelSnapping;
		}*/
		
		/*public function set pixelSnapping(pixelSnapping:PixelSnapping):void 
		{
			this._bitmap.pixelSnapping = pixelSnapping;
		}*/
		
		/*public function get smoothing():Boolean 
		{
			return this._bitmap.smoothing;
		}*/
		
		/*public function set smoothing(smoothing:Boolean):void 
		{
			this._bitmap.smoothing = smoothing;
		}*/
		
		
		
		public function CanvasFacade(bitmapData:BitmapData, pixelSnapping:String, smoothing:Boolean, model:CanvasModel) 
		{
			super(bitmapData, pixelSnapping, smoothing);
			
			this._model = model;
		}
		

		
		public static function create(bitmapData:BitmapData, pixelSnapping:String, smoothing:Boolean, model:CanvasModel):CanvasFacade
		{
			return new CanvasFacade(bitmapData, pixelSnapping, smoothing, model);
		}
		
	}

}