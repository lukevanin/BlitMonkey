package engine.graphics.factories 
{
	import engine.config.interfaces.ICellConfig;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICellFactory;
	import engine.graphics.models.CellModel;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellFactory implements ICellFactory
	{
		
		public function CellFactory() 
		{
		}
		
		
		public function createCell(config:ICellConfig):ICell 
		{
			return new CellModel(config.area, config.offset);
		}
		
		
		
		
		public static function create():CellFactory
		{
			return new CellFactory();
		}
		
	}

}