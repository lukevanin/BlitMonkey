package engine.graphics.views 
{
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __IndexableGraphicAnimationView implements IGraphicView 
	{
		private var _model:IAnimationModel;
		
		private var _graphic:IIndexableGraphic;
		
		

		public function get size():Point 
		{
			return this._graphic.size;
		}
		
		
		public function IndexableGraphicAnimationView(model:IAnimationModel, graphic:IIndexableGraphic) 
		{
			this._model = model;
			
			this._graphic = graphic;
		}
		
		
		public function draw(renderContext:IRenderContext):void 
		{
			this._graphic.index = this._model.
		}
		
	}

}