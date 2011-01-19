package engine.graphics.views 
{
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.ICompositeGraphicModel;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeGraphicView implements IGraphicView
	{
		
		private var _model:ICompositeGraphicModel

		
		
		public function get area():Rectangle
		{
			return this.calculateArea();
		}
		
		
		public function CompositeGraphicView(model:ICompositeGraphicModel) 
		{
			this._model = model;
		}
		
		
		
		private function calculateArea():Rectangle
		{
			var area:Rectangle = this._model.getGraphicAt(0).area;
			
			for (var i:int = 1; i < this._model.numGraphics; i++)
				area = area.union(this._model.getGraphicAt(i).area);
				
			return area;
		}
		
		

		public function draw(renderContext:IRenderContext, transform:ITransform):void 
		{
			for (var i:int = 0; i < this._model.numGraphics; i++)
				this._model.getGraphicAt(i).draw(renderContext, transform.append(this._model.transform));
		}
		
	}

}