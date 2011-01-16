package engine.graphics.facades 
{
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.IRange;
	import engine.common.Range;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IIndexableGraphicModel;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class IndexableGraphicFacade implements IIndexableGraphic
	{

		//private var _index:int;

		//private var _collection:ICollection;
		
		private var _model:IIndexableGraphicModel;
		
		private var _view:IGraphicView;
		
		
		
		
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
		
		
		
		public function get index():int 
		{
			return this._model.index;
		}
		
		public function set index(index:int):void 
		{
			this._model.index = index;
		}
		
		
		public function get range():IRange
		{
			return new Range(0, this._model.numItems);
		}

		
		
		public function IndexableGraphicFacade(model:IIndexableGraphicModel, view:IGraphicView) 
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