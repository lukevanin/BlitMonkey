package engine.graphics.providers 
{
	import engine.common.interfaces.IDictionary;
	import engine.common.Dictionary;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsFactory;
	import engine.graphics.interfaces.ICellsProvider;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsProvider implements ICellsProvider
	{
		
		private var _cells:IDictionary;
		
		private var _cellsFactory:ICellsFactory;
		
		
		public function CellsProvider(cellsFactory:ICellsFactory) 
		{
			this._cells = new Dictionary();
			
			this._cellsFactory = cellsFactory;
		}
		

		
		public function getCells(id:String):ICells 
		{
			if (!this._cells.hasItem(id))
				this._cells.addItem(id, this._cellsFactory.createCells(id));
			
			return this._cells.getItem(id) as ICells;
		}
		
		
		
		/*public static function create(cellsFactory:ICellsFactory):CellsProvider
		{
			return new CellsProvider(cellsFactory);
		}*/
		
	}

}