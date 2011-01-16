package engine.graphics.views 
{
	import engine.common.interfaces.ICollection;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphicModel;
	import engine.graphics.interfaces.IRenderContext;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellBitmapView implements IGraphicView 
	{
		private var _model:IIndexableGraphicModel;
		
		private var _bitmap:BitmapData;
		
		
		
		
		public function get size():Point 
		{
			return this.getCurrentArea().size;
		}
		

		
		public function CellBitmapView(model:IIndexableGraphicModel, bitmap:BitmapData) 
		{
			this._model = model;
			
			this._bitmap = bitmap;
		}
		

		
		public function draw(renderContext:IRenderContext):void 
		{
			if (this._bitmap == null)
				return;
				
			renderContext.blit(this._bitmap, this.getCurrentArea(), this._model.position);
		}
		
		
		
		private function getCurrentArea():Rectangle
		{
			return this._model.getItemAt(this._model.index);
		}
		
	}

}