package engine.graphics.views 
{
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class MapView implements IGraphic
	{
		
		private var _model:IMapModel;
		
		private var _graphic:IIndexableGraphic;
		
		
		public function MapView(model:IMapModel, graphic:IIndexableGraphic) 
		{
			this._model = model;
			
			this._graphic = graphic;
		}
		
		
		
		public function draw(renderContext:IRenderContext):void
		{
			var p:Point = new Point();
			
			// TODO: optimise (only render tiles and portions of tiles within the area)
			for (p.y = 0; p.y < this._model.dimensions.y; p.y++)
			{
				for (p.x = 0; p.x < this._model.dimensions.x; p.x++)
					this.renderTile(renderContext, this._model.position.add(this.calculatePositionAt(p)), this._model.getItemAt(p));
			}
		}
		
		
		
		private function calculatePositionAt(p:Point):Point
		{
			var x:Number = (p.x - this._model.offset.x) * this._model.size.x;
			
			var y:Number = (p.y - this._model.offset.y) * this._model.size.y;
			
			return new Point(x, y);
		}
		
		
		
		private function renderTile(renderContext:IRenderContext, position:Point, index:int):void
		{
			this._graphic.index = index;
			
			this._graphic.draw(renderContext, position)
		}
		
		
	}

}