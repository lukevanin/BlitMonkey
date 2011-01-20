package engine.graphics.builders 
{
	import engine.common.Grid;
	import engine.common.interfaces.IGrid;
	import engine.common.interfaces.ITileset;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.graphics.contexts.CanvasRenderContext;
	import engine.graphics.controllers.MapController;
	import engine.graphics.facades.MapFacade;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMap;
	import engine.graphics.interfaces.IMapController;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.interfaces.IMapView;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.models.MapModel;
	import engine.graphics.views.TilesetMapView;
	import flash.display.PixelSnapping;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetMapBuilder 
	{
		
		private var _tileset:ITileset;
		
		
		public function TilesetMapBuilder(tileset:ITileset) 
		{
			this._tileset = tileset;
		}
		
		
		
		public function buildMap(grid:IGrid, displaySize:Point, gridSize:Point, offset:Point = null, transform:ITransform = null):IMap
		{
			if (offset == null)
				offset = new Point();
				
			if (transform == null)
				transform = new Transform();
			
			var model:IMapModel = new MapModel(grid, offset, gridSize, displaySize, transform);
			
			
			var flags:IGrid = new Grid(grid.columns, grid.rows);
			
			var bufferSize:Rectangle = new Rectangle(0, 0, grid.columns * gridSize.x, grid.rows * gridSize.y);
			
			var buffer:IRenderContext = new CanvasRenderContext(new CanvasBuilder().buildCanvas(bufferSize, PixelSnapping.ALWAYS, false, false, 0xffff00ff));
			
			var view:IMapView = new TilesetMapView(model, this._tileset, flags, buffer);
			
			
			var controller:IMapController = new MapController(model);
			
			return new MapFacade(model, view, controller);
		}
		
		
	}

}