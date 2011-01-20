package engine.graphics.models 
{
	import engine.common.interfaces.IGrid;
	import engine.common.interfaces.ISignal;
	import engine.geometry.interfaces.ITransform;
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
		
		private var _gridSize:Point;
		
		private var _displaySize:Point;
		
		private var _transform:ITransform;
		
		
		
		
		public function set offset(offset:Point):void
		{
			this._offset.x = offset.x;
			this._offset.y = offset.y;
		}
		
		public function get offset():Point
		{
			return this._offset.clone();
		}
		
		
		
		public function set gridSize(gridSize:Point):void
		{
			this._gridSize.x = gridSize.x;
			this._gridSize.y = gridSize.y;
		}
		
		public function get gridSize():Point
		{
			return this._gridSize;
		}
		
		
		
		public function set displaySize(displaySize:Point):void
		{
			this._displaySize.x = displaySize.x;
			this._displaySize.y = displaySize.y;
		}
		
		public function get displaySize():Point
		{
			return this._displaySize.clone();
		}
		
		
		public function get columns():int
		{
			return this._grid.columns;
		}
		
		public function get rows():int
		{
			return this._grid.rows;
		}
		
				
		
		public function get transform():ITransform
		{
			return this._transform;
		}
		
		
		
		/*public function indexChangeSignal():ISignal
		{
			return this._grid.indexChangeSignal;
		}*/
	
		
		
		public function MapModel(grid:IGrid, offset:Point, gridSize:Point, displaySize:Point, transform:ITransform) 
		{
			this._grid = grid.clone();
			
			this._offset = offset;
			
			this._gridSize = gridSize.clone();
			
			this._displaySize = displaySize.clone();
			
			this._transform = transform;
		}
		
		
		public function setIndex(column:int, row:int, index:int):void 
		{
			//var currentIndex:int = this._grid.getItem(column, row);
			
			//if (currentIndex == index)
				//return;
			
			this._grid.setItem(column, row, index);
			
			//this.dispatchEvent(new MapEvent(column, row, currentIndex, index));
		}
		
		
		public function getIndex(column:int, row:int):int
		{
			return this._grid.getItem(column, row);
		}
		
	}

}