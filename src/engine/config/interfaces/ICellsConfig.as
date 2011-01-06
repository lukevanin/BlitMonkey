package engine.config.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellsConfig 
	{
		
		function get bitmap():String;
		
		
		function get numCells():int;
		
		
		function getCellAt(index:int):ICellConfig;
		
	}
	
}