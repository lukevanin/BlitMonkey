package engine.common 
{
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.IGrid;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class Grid implements IGrid 
	{
		
		private var _columns:int;
		
		private var _rows:int;
		
		private var _items:Vector.<*>;
		
		
		public function get columns():int
		{
			return this._columns;
		}
		
		public function get rows():int
		{
			return this._rows;
		}

		
		
		public function Grid(columns:int, rows:int) 
		{
			this._columns = columns;
			
			this._rows = rows;
			
			this._items = new Vector.<*>(columns * rows, true);
		}
		
		
		
		public function setItem(column:int, row:int, item:*):void 
		{
			this._items[int((row * this.columns) + column)] = item;
		}
		
		
		public function getItem(column:int, row:int):* 
		{
			return this._items[int((row * this.columns) + column)];
		}
		
		
		
		
		public function clone():IGrid
		{
			var g:IGrid = new Grid(this.columns, this.rows);
			
			for (var y:int = 0; y < this.rows; y++)
			{
				for (var x:int = 0; x < this.columns; x++)
					g.setItem(x, y, this.getItem(x, y));
			}
			
			return g;
		}
		
		
		
		public static function fromArray(a:Array):IGrid
		{
			// TODO: add error handling
			var rows:int = a.length;
			
			var columns:int = (a[0] as Array).length;
			
			var grid:IGrid = new Grid(columns, rows);
			
			for (var y:int = 0; y < rows; y++)
			{
				var b:Array = a[y];
				
				for (var x:int = 0; x < columns; x++)
					grid.setItem(x, y, b[x]);
			}
			
			return grid;
		}
		
	}

}