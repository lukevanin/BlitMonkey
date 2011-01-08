package engine.config.factories 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.common.StringUtil;
	import engine.config.enums.XmlConfigEnum;
	import engine.config.interfaces.ICellConfig;
	import engine.config.interfaces.ICellsConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.config.models.CellConfigModel;
	import engine.config.models.CellsConfigModel;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlCellsConfigFactory implements IXmlConfigFactory 
	{
		
		public function XmlCellsConfigFactory() 
		{
			
		}
		
		
		
		
		/*public function createConfig(xml:XML):Object 
		{
			var config:ISafeDictionary = new ISafeDictionary();
			
			for each (var cellsXml:XML in xml.elements(XmlConfigEnum.CELLS))
				config.addItem(this.createCellsConfig(cellsXml));
				
			return config;
		}*/
		
		
		
		/**
		 * Example XML:
		 * 		<cells id="abu" bitmap="abu">
		 * 			<cell />
		 * 			...
		 * 		</cells>
		 * 		...
		 * 
		 * @param	xml
		 */
		public function createConfig(xml:XML):Object
		{
			return this.createCellsConfig(xml);
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
		private function createCellsConfig(xml:XML):ICellsConfig
		{
			var cells:Vector.<ICellConfig> = new Vector.<ICellConfig>();
			
			for each (var cellXml:XML in xml.elements(XmlConfigEnum.CELL))
				cells.push(this.createCellConfig(cellXml));
			
			return new CellsConfigModel(xml.@bitmap.toString, cells);
		}
		
		
		
		/**
		 * Example XML:
		 * 		<cell area="5,4,44,40" offset="33,40" />
		 * 
		 * @param	xml
		 */
		private function createCellConfig(xml:XML):ICellConfig
		{
			var area:Rectangle = StringUtil.stringToRectangle(xml.@area.toString());
			
			var offset:Point = StringUtil.stringToPoint(xml.@offset.toString());
			
			return new CellConfigModel(area, offset);
		}		
		
	}

}