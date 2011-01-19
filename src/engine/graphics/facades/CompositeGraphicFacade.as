package engine.graphics.facades 
{
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.ICompositeGraphicModel;
	import engine.graphics.interfaces.IGraphicView;
	import flash.geom.Point;
	import engine.graphics.interfaces.ICompositeGraphic;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeGraphicFacade implements ICompositeGraphic 
	{
		private var _model:ICompositeGraphicModel;
		
		private var _view:IGraphicView;
		
				
		
		public function get numGraphics():int 
		{
			return this._model.numGraphics;
		}
		
		
		
		public function get area():Rectangle
		{
			return this._view.area;
		}
		
		
		public function get transform():ITransform
		{
			return this._model.transform;
		}
		

		
		public function CompositeGraphicFacade(model:ICompositeGraphicModel, view:IGraphicView) 
		{
			this._model = model;
			
			this._view = view;
		}

		
		public function addGraphic(graphic:IGraphic):void 
		{
			this._model.addGraphic(graphic);
		}
		
		public function getGraphicAt(index:int):IGraphic 
		{
			return this._model.getGraphicAt(index);
		}
		
		public function removeGraphicAt(index:int):IGraphic 
		{
			return this._model.removeGraphicAt(index);
		}
		

		public function draw(renderContext:IRenderContext, transform:ITransform):void 
		{
			this._view.draw(renderContext, transform);
		}
		
	}

}