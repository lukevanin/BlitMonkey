package engine.graphics.factories 
{
	import engine.common.utils.StringUtil;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICellBuilder;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellFactory implements IObjectFactory
	{
		private var _cellBuilder:ICellBuilder;
		
		
		public function CellFactory(cellBuilder:ICellBuilder) 
		{
			this._cellBuilder = cellBuilder;
		}
		
		
		public function createObject(config:IConfig):Object
		{
			var area:Rectangle = StringUtil.stringToRectangle(config.getProperty("area"));
			
			var offset:Point = StringUtil.stringToPoint(config.getProperty("offset"));
			
			return this._cellBuilder.buildCell(area, offset);
		}
		
		
		
	}

}