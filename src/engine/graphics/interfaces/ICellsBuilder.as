package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellsBuilder 
	{
		
		function buildCells(bitmap:String, cells:Vector.<ICell>):ICells;
		
	}
	
}