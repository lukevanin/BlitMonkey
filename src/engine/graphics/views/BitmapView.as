package engine.graphics.views 
{
	import engine.graphics.interfaces.IBitmapModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IRenderContext;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapView implements IGraphicView
	{
		
		private var _bitmapData:BitmapData;
		
		private var _model:IBitmapModel;
		
		
		
		public function get size():Point
		{
			return this._model.area.size;
		}
		
		
		public function BitmapView(bitmapData:BitmapData, model:IBitmapModel) 
		{
			this._bitmapData = bitmapData;
			
			this._model = model;
		}
		
		
		
		public function draw(renderContext:IRenderContext):void
		{
			//renderContext.blit(this._bitmapData, this.getArea(), this._position);
			renderContext.blit(this._bitmapData, this._model.area, this._model.position);
		}
		
		
		
		/*private function getArea():Rectangle
		{
			return new Rectangle(this._model.offset.x, this._model.offset.y, this._model.size.x, this._model.size.y);
		}*/
		
		
	}

}