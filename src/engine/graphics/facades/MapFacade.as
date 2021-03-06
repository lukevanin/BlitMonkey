package engine.graphics.facades 
{
	import engine.common.interfaces.IGrid;
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMap;
	import engine.graphics.interfaces.IMapController;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.interfaces.IMapView;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class MapFacade implements IMap
	{
		private var _model:IMapModel;
		
		private var _view:IMapView;
		
		private var _controller:IMapController;		
		
		
		
		public function get columns():int 
		{
			return this._model.columns;
		}
		
		public function get rows():int 
		{
			return this._model.rows;
		}
		
		
		
		public function get area():Rectangle
		{
			return this._view.area;
		}
		
		
		public function get transform():ITransform
		{
			return this._model.transform;
		}
		
		
		
		public function MapFacade(model:IMapModel, view:IMapView, controller:IMapController) 
		{
			this._model = model;
			
			this._view = view;
			
			this._controller = controller;
		}

		
		
		


		public function offsetBy(p:Point):void 
		{
			this._controller.offsetBy(p);
		}
		
		public function offsetTo(p:Point):void 
		{
			this._controller.offsetTo(p);
		}
		

		
		public function setIndex(x:int, y:int, index:int):void 
		{
			this._model.setIndex(x, y, index);
			
			this._view.invalidateAt(x, y);
		}
		
		
		public function getIndex(x:int, y:int):int 
		{
			return this._model.getIndex(x, y);
		}
		
		
		public function draw(renderContext:IRenderContext, transform:ITransform):void
		{
			this._view.draw(renderContext, transform);
		}
		
		
	}

}