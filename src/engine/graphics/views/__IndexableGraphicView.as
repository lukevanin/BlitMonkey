package engine.graphics.views 
{
	import engine.common.interfaces.ICollection;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphicModel;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __IndexableGraphicView implements IGraphicView 
	{
		private var _model:IIndexableGraphicModel;
		
		private var _collection:ICollection;
		
		
		
		
		public function get size():Point 
		{
			return (this._collection.getItemAt(this._model.index) as IGraphic).size;
		}
		

		
		public function IndexableGraphicView(model:IIndexableGraphicModel, collection:ICollection) 
		{
			this._model = model;
			
			this._collection = collection;
		}
		

		
		public function draw(renderContext:IRenderContext):void 
		{
			(this._collection.getItemAt(this._model.index) as IGraphic).draw(renderContext);
		}
		
	}

}