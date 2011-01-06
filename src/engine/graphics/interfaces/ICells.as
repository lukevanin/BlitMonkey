package engine.graphics.interfaces 
{
	import flash.display.BitmapData;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICells 
	{
		
		function get bitmap():BitmapData;

		
		function get numCells():int;
		
		
		function addCell(cell:ICell):void;
		
		//function insertCellAt(cell:ICell, index:int):void;
		
		//function replaceCellAt(cell:ICell, index:int):void;
		
		//function replaceCells(cells:Vector.<ICell>):void;
		
		//function removeCellAt(index:int):void;
		
		
		function getCellAt(index:int):ICell;
		
		
	}
	
}