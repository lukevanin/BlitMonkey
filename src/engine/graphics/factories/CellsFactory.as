package engine.graphics.factories 
{

	import engine.collection.interfaces.IIterator;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.graphics.interfaces.IBitmapProvider;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICellBuilder;
	import engine.graphics.interfaces.ICellsBuilder;
	import engine.graphics.models.CellsModel;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.ICellsFactory;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsFactory implements IObjectFactory
	{
		
		//private var _config:IGameConfig;
		
		private var _builder:ICellsBuilder;
		
		private var _cellFactory:IObjectFactory;
		
		public function CellsFactory(builder:ICellsBuilder, cellFactory:IObjectFactory) 
		{
			this._builder = builder;
			
			this._cellFactory = cellFactory;
		}
		
		
		public function createObject(config:IConfig):Object 
		{
			var bitmap:String = config.getProperty("bitmap");
			
			var iterator:IIterator = config.getConfigIterator();
			
			var cells:Vector.<ICell> = new Vector.<ICell>();
			
			while (iterator.hasNext)
			{
				cells.push(this._cellFactory.createObject(iterator.value as IConfig));
				iterator.next();
			}
			
			return this._builder.buildCells(bitmap, cells);
		}
		

		
	}

}