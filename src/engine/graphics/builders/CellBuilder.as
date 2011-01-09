package engine.graphics.builders 
{
	import engine.graphics.models.CellModel;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICellBuilder;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellBuilder implements ICellBuilder 
	{
		
		public function CellBuilder() 
		{
			
		}
		

		public function buildCell(area:Rectangle, offset:Point):ICell 
		{
			return new CellModel(area, offset);
		}
		
	}

}