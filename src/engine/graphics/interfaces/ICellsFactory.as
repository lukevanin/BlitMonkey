package engine.graphics.interfaces 
{
	import engine.graphics.models.CellsModel;
	import flash.display.BitmapData;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellsFactory 
	{
		
		function createCells(id:String):ICells;
		
		
		
	}
	
}