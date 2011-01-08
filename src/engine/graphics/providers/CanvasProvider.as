package engine.graphics.providers 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.collection.SafeDictionary;
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFactory;
	import engine.graphics.interfaces.IAnimationProvider;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasFactory;
	import engine.graphics.interfaces.ICanvasProvider;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasProvider implements ICanvasProvider
	{
		
		private var _canvas:ISafeDictionary;
		
		private var _canvasFactory:ICanvasFactory;
		
		
		public function CanvasProvider(canvasFactory:ICanvasFactory) 
		{
			this._canvas = new SafeDictionary();
			
			this._canvasFactory = canvasFactory;
		}
		

		
		public function getCanvas(id:String):ICanvas 
		{
			if (!this._canvas.hasItem(id))
				this._canvas.addItem(id, this._canvasFactory.createCanvas(id));
			
			return this._canvas.getItem(id) as ICanvas;
		}
		
		
		
		/*public static function create(canvasFactory:ICanvasFactory):CanvasProvider
		{
			return new CanvasProvider(canvasFactory);
		}*/
	}

}