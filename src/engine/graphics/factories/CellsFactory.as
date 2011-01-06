package engine.graphics.factories 
{

	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.ICellsConfigCollection;
	import engine.graphics.interfaces.IBitmapProvider;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICellFactory;
	import engine.graphics.models.CellsModel;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsFactory;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsFactory implements ICellsFactory
	{
		
		private var _config:ICellsConfigCollection;
		
		private var _cellFactory:ICellFactory;
		
		private var _bitmapProvider:IBitmapProvider;
		
		
		public function CellsFactory(config:ICellsConfigCollection, cellFactory:ICellFactory, bitmapProvider:IBitmapProvider) 
		{
			this._config = config;
			
			this._cellFactory = cellFactory;
			
			this._bitmapProvider = bitmapProvider;
		}
		

		public function createCells(id:String):ICells 
		{
			var config:ICellsConfig = this._config.getCells(id);
			
			var bitmap:BitmapData = this._bitmapProvider.getBitmap(id);
			
			var cells:ICells = new CellsModel(new Vector.<ICell>(), bitmap);
			
			for (var i:int = 0; i < config.numCells; i++)
				cells.addCell(this._cellFactory.createCell(config.getCellAt(i)));
			
			return cells;
		}
		
		
		
		public static function create(config:ICellsConfigCollection, cellFactory:ICellFactory, bitmapProvider:IBitmapProvider):CellsFactory
		{
			return new CellsFactory(config, cellFactory, bitmapProvider);
		}
		

		
	}

}