package engine.graphics.interfaces 
{
	import engine.config.interfaces.ICellConfig;
	import flash.display.BitmapData;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellFactory 
	{
		
		function createCell(config:ICellConfig):ICell;
		
		
	}
	
}