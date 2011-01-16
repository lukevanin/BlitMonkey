package engine.graphics.builders 
{
	import engine.common.interfaces.IGrid;
	import engine.common.interfaces.ITileset;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.graphics.controllers.MapController;
	import engine.graphics.facades.MapFacade;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMap;
	import engine.graphics.interfaces.IMapController;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.models.MapModel;
	import engine.graphics.views.MapView;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class MapBuilder 
	{
		
		public function MapBuilder() 
		{
			
		}
		
		
		
		public function buildMap(grid:IGrid, tileset:ITileset, displaySize:Point, gridSize:Point, offset:Point = null, transform:ITransform = null):IMap
		{
			if (offset == null)
				offset = new Point();
				
			if (transform == null)
				transform = new Transform();
			
			var model:IMapModel = new MapModel(grid, offset, gridSize, displaySize, transform);
			
			var view:IGraphicView = new MapView(model, tileset);
			
			var controller:IMapController = new MapController(model);
			
			return new MapFacade(model, view, controller);
		}
		
		
	}

}