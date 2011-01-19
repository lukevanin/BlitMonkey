package engine.graphics.views 
{
	import engine.common.interfaces.ITileset;
	import engine.common.interfaces.IView;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.geometry.utils.GeometryUtil;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.interfaces.IRenderContext;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetMapView implements IGraphicView
	{
		
		private var _model:IMapModel;
		
		private var _tileset:ITileset;
		
		
		
		public function get area():Rectangle
		{
			return this.calculateArea();
		}
		
		
		
		public function TilesetMapView(model:IMapModel, tileset:ITileset) 
		{
			this._model = model;
			
			this._tileset = tileset;
		}
		
		
		
		private function calculateArea():Rectangle
		{
			var p:Point = this._model.displaySize;
			
			var r:Rectangle = new Rectangle(0, 0, p.x, p.y);
			
			return GeometryUtil.getTransformedBoundingBox(r, this._model.transform);
		}
		
		
		
		public function draw(renderContext:IRenderContext, transform:ITransform):void
		{
			// TODO: optimise (only render tiles and portions of tiles within the area)

			for (var y:int = 0; y < this._model.rows; y++)
			{
				for (var x:int = 0; x < this._model.columns; x++)
					this._tileset.draw(renderContext, transform.append(this.calculateTransform(x, y)), this._model.getIndex(x, y));
			}

		}
		

		
		
		private function calculateTransform(x:int, y:int):ITransform
		{
			var px:Number = (x * this._model.gridSize.x) - this._model.offset.x;
			
			var py:Number = (y * this._model.gridSize.y) - this._model.offset.y;
			
			return new Transform(new Point(px, py));
		}
		
		
		
		
	}

}