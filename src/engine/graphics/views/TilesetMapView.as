package engine.graphics.views 
{
	import engine.common.interfaces.ITileset;
	import engine.common.interfaces.IView;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.interfaces.IRenderContext;
	import flash.events.Event;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetMapView implements IGraphicView
	{
		
		private var _model:IMapModel;
		
		private var _tileset:ITileset;
		
		
		
		public function get size():Point
		{
			return this._model.displaySize;
		}
		
		
		
		public function TilesetMapView(model:IMapModel, tileset:ITileset) 
		{
			this._model = model;
			
			this._tileset = tileset;
		}
		
		
		
		public function draw(renderContext:IRenderContext):void
		{
			// TODO: optimise (only render tiles and portions of tiles within the area)

			for (var y:int = 0; y < this._model.rows; y++)
			{
				for (var x:int = 0; x < this._model.columns; x++)
					this._tileset.draw(renderContext, this.calculatePosition(x, y), this._model.getIndex(x, y));
			}
		}
		
		
		
		private function calculatePosition(x:int, y:int):ITransform
		{
			var px:Number = (x * this._model.gridSize.x) - this._model.offset.x;
			
			var py:Number = (y * this._model.gridSize.y) - this._model.offset.y;
			
			return new Transform(new Point(px, py));
		}
		
		
		
		
	}

}