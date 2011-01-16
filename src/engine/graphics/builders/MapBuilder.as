package engine.graphics.builders 
{
	import engine.common.interfaces.IGrid;
	import engine.graphics.facades.MapFacade;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMap;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.models.MapModel;
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
		
		
		
		public function buildMap(graphic:IIndexableGraphic, grid:IGrid, dimensions:Point, offset:Point = null):IMap
		{
			if (offset == null)
				offset = new Point();
			
			var mapModel:IMapModel = new MapModel(grid, offset);
			
			return new MapFacade(graphic, mapModel, dimensions);
		}
		
		
	}

}