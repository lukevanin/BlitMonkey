package engine.graphics.models 
{
	import engine.graphics.interfaces.ICanvas;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasModel
	{
		
		private var _isTransparent:Boolean;
		
		private var _backgroundColour:uint;
		
		
		
		public function get backgroundColour():uint 
		{
			return this._backgroundColour;
		}
		
		
		public function get isTransparent():Boolean
		{
			return this._isTransparent;
		}
		
		
		public function CanvasModel(isTransparent:Boolean, backgroundColour:uint) 
		{
			this._isTransparent = isTransparent;
			
			this._backgroundColour = backgroundColour;
		}
		
		
		
		
		public static function create(isTransparent:Boolean, backgroundColour:uint):CanvasModel
		{
			return new CanvasModel(isTransparent, backgroundColour);
		}
		
	}

}