package engine.graphics.models 
{
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICells;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsModel implements ICells
	{
		private var _bitmap:BitmapData;
		
		private var _cells:Vector.<ICell>;
		
		
		public function get bitmap():BitmapData
		{
			return this._bitmap;
		}

		
		
		public function get numCells():int 
		{
			return this._cells.length;
		}
		
		
		
		
		public function CellsModel(cells:Vector.<ICell>, bitmap:BitmapData) 
		{
			this._bitmap = bitmap;
			
			this._cells = cells;
		}
		
		
		
		public function addCell(cell:ICell):void 
		{
			this._cells.push(cell);
		}
		
		public function removeCellAt(index:int):void 
		{
			this._cells.splice(index, 1);
		}
		
		public function getCellAt(index:int):ICell 
		{
			return this._cells[index];
		}
		
	}

}