package engine.graphics.facades 
{
	import engine.graphics.interfaces.IBitmap;
	import engine.graphics.interfaces.IBitmapModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.views.BitmapView;
	import flash.geom.Point;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapFacade implements IBitmap
	{
		
		
		private var _model:IBitmapModel;
		
		private var _view:IGraphicView;
		
		
		/*public function get offset():Point
		{
			return this._model.offset;
		}
		
		public function set offset(offset:Point):void
		{
			this._model.offset = offset;
		}*/
		
		
		public function get area():Rectangle
		{
			return this._model.area;
		}
		
		public function set area(area:Rectangle):void
		{
			this._model.area = area;
		}
		
		
		
		public function get position():Point 
		{
			return this._model.position;
		}
		
		public function set position(position:Point):void 
		{
			this._model.position = position;
		}
		
		
		
		public function get size():Point 
		{
			return this._view.size;
		}		
	
		
		
		public function BitmapFacade(model:IBitmapModel, view:IGraphicView) 
		{
			this._model = model;
			
			this._view = view;
		}
		
		
		
		public function draw(renderContext:IRenderContext):void 
		{
			this._view.draw(renderContext);
		}
		


		
	}

}