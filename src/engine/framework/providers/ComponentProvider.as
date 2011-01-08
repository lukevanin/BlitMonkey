package engine.framework.providers 
{
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IGameConfig;
	import engine.framework.interfaces.IComponentProvider;
	import engine.graphics.factories.CanvasFactory;
	import engine.graphics.factories.CellFactory;
	import engine.graphics.factories.CellsFactory;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationProvider;
	import engine.graphics.interfaces.IBitmapProvider;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICanvasConfig;
	import engine.graphics.interfaces.ICanvasFactory;
	import engine.graphics.interfaces.ICanvasProvider;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsFactory;
	import engine.graphics.interfaces.ICellsProvider;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ComponentProvider implements IComponentProvider
	{
		
		private var _canvasProvider:ICanvasProvider;
		
		private var _bitmapProvider:IBitmapProvider;
		
		//private var _cellsProvider:ICellsProvider;
		
		private var _animationProvider:IAnimationProvider;
		
		
		
		//public function ComponentProvider(canvasProvider:ICanvasProvider, bitmapProvider:IBitmapProvider, cellsProvider:ICellsProvider, animationProvider:IAnimationProvider) 
		public function ComponentProvider(canvasProvider:ICanvasProvider, bitmapProvider:IBitmapProvider, animationProvider:IAnimationProvider) 
		{
			this._canvasProvider = canvasProvider;
			
			this._bitmapProvider = bitmapProvider;
			
			/*this._cellsProvider = cellsProvider;*/
			
			this._animationProvider = animationProvider;
		}
		


		public function getBitmap(id:String):BitmapData 
		{
			return this._bitmapProvider.getBitmap(id);
		}
		
		
		
		
		public function getCanvas(id:String):ICanvas
		{
			return this._canvasProvider.getCanvas(id);
		}
		
		
		
		/*public function getCells(id:String):ICells 
		{
			return this._cellsProvider.getCells(id);
		}*/
		
		
		
		public function getAnimation(id:String):IAnimation
		{
			return this._animationProvider.getAnimation(id);
		}
		
		
		
		//public static function create(canvasProvider:ICanvasProvider, bitmapProvider:IBitmapProvider, cellsProvider:ICellsProvider, animationProvider:IAnimationProvider):IComponentProvider
		/*public static function create(canvasProvider:ICanvasProvider, bitmapProvider:IBitmapProvider, animationProvider:IAnimationProvider):IComponentProvider
		{
			//return new ComponentProvider(canvasProvider, bitmapProvider, cellsProvider, animationProvider);
			return new ComponentProvider(canvasProvider, bitmapProvider, animationProvider);
		}*/

		
	}

}