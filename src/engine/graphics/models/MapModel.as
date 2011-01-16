package engine.graphics.models 
{
	import engine.common.interfaces.IGrid;
	import engine.graphics.interfaces.IMapModel;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class MapModel implements IMapModel 
	{
		
		private var _grid:IGrid;
		
		private var _offset:Point;
		
		
		/*public function get area():Rectangle 
		{
			return this._area.clone();
		}*/
		
		/*public function set area(area:Rectangle):void 
		{
			this._area.x = area.x;
			
			this._area.y = area.y;
		}*/
		
		
		public function set offset(offset:Point):void
		{
			this._offset.x = offset.x;
			
			this._offset.y = offset.y;
		}
		
		public function get offset():Point
		{
			return this._offset.clone();
		}
		
		
		public function get dimensions():Point 
		{
			return this._grid.dimensions;
		}
		
		
		//public function MapModel(grid:IGrid, area:Rectangle) 
		public function MapModel(grid:IGrid, offset:Point) 
		{
			this._grid = grid;
			
			//this._area = area;
			this._offset = offset;
		}
		
		
		public function setItemAt(item:*, position:Point):void 
		{
			this._grid.setItemAt(item, position);
		}
		
		public function getItemAt(position:Point):* 
		{
			return this._grid.getItemAt(position);
		}
		
	}

}