package engine.graphics.builders 
{
	import engine.framework.interfaces.IObjectProvider;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsBuilder;
	import engine.graphics.models.CellsModel;
	import flash.display.BitmapData;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsBuilder implements ICellsBuilder 
	{
		
		private var _bitmapProvider:IObjectProvider;
		
		
		public function CellsBuilder(bitmapProvider:IObjectProvider) 
		{
			this._bitmapProvider = bitmapProvider;
		}
		

		public function buildCells(bitmap:String, cells:Vector.<ICell>):ICells 
		{
			return new CellsModel(cells, this._bitmapProvider.getObject(bitmap) as BitmapData);
		}		
		
		
	}

}