package engine.config.models 
{
	import engine.config.interfaces.ICellConfig;
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.graphics.interfaces.ICell;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsConfigModel implements ICellsConfig
	{
		
		private var _bitmap:String;
		
		private var _cells:Vector.<ICellConfig>;
		
		
		
		public function get bitmap():String
		{
			return this._bitmap;
		}
		
		
		
		public function get numCells():int
		{
			return this._cells.length;
		}
		
		
		public function CellsConfigModel(bitmap:String, cells:Vector.<ICellConfig>) 
		{
			this._bitmap = bitmap;
			
			this._cells = cells;
		}
		
		
		
		
		public function getCellAt(index:int):ICellConfig
		{
			return this._cells[index];
		}
		
		
		
		/**
		 * Example XML:
		 * 		<cells id="abu" bitmap="abu">
		 * 			<cell />
		 * 			...
		 * 		</cells>
		 * 
		 * @param	xml
		 */
		/*public function parseXml(xml:XML, factory:IXmlConfigFactory):void
		{
			this._bitmap = xml.@bitmap.toString();
			
			this.parseCellsXml(xml, factory);
		}*/
		
		/*
		private function parseCellsXml(xml:XML, factory:IXmlConfigFactory):void
		{
			this._cells = new Vector.<ICellConfig>();
			
			for each (var cellXml:XML in xml.cell)
				this._cells.push(factory.createConfig(cellXml));
		}*/
		
		
		
		
		
	/*	public static function create(xml:XML, factory:IXmlConfigFactory):CellsConfigModel
		{
			var config:CellsConfigModel = new CellsConfigModel();
			
			config.parseXml(xml, factory);
			
			return config;
		}*/
		
		
	}

}