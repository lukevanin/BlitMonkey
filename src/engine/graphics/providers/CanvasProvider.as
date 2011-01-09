package engine.graphics.providers 
{
	import engine.collection.interfaces.IDictionary;
	import engine.collection.Dictionary;
	import engine.framework.interfaces.IComponent;
	import engine.framework.interfaces.IComponentProvider;
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
	public class CanvasProvider implements IComponentProvider
	{
		
		private var _canvas:IDictionary;
		
		private var _canvasFactory:ICanvasFactory;
		
		
		public function CanvasProvider(canvasFactory:ICanvasFactory) 
		{
			this._canvas = new Dictionary();
			
			this._canvasFactory = canvasFactory;
		}
		

		
		public function getComponent(id:String):IComponent
		{
			return this.getCanvas(id);
		}
		
		
		private function getCanvas(id:String):ICanvas 
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