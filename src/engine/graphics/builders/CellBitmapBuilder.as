package engine.graphics.builders 
{
	import engine.common.Collection;
	import engine.common.interfaces.ICollection;
	import engine.common.utils.TestUtil;
	import engine.graphics.facades.BitmapFacade;
	import engine.graphics.facades.IndexableGraphicFacade;
	import engine.graphics.interfaces.IBitmap;
	import engine.graphics.interfaces.ICellBitmapBuilder;
	import engine.graphics.interfaces.ICellBitmapModel;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IIndexableGraphicModel;
	import engine.graphics.models.GraphicModel;
	import engine.graphics.models.IndexableGraphicModel;
	import engine.graphics.views.CellBitmapView;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellBitmapBuilder
	{
		
		public function CellBitmapBuilder() 
		{
			
		}
		
		
		public function buildCellBitmap(bitmap:BitmapData, cellDimensions:Point, graphicModel:IGraphicModel = null, index:int = 0):IIndexableGraphic
		{
			var cellsX:int = bitmap.width / cellDimensions.x;
			
			var cellsY:int = bitmap.height / cellDimensions.y;
			
			/*var areas:Vector.<Rectangle> = new Vector.<Rectangle>();
			
			for (var y:int = 0; y < cellsY; y++)
			{
				for (var x:int = 0; x < cellsX; x++)
				{
					var offset:Point = new Point(x * cellDimensions.x, y * cellDimensions.y); // , cellSize.x, cellSize.y);
					collection.addItem(new BitmapFacade(bitmap, offset, cellDimensions));
				}					
			}*/
			
			
			var collection:ICollection = new Collection();
			
			for (var y:int = 0; y < cellsY; y++)
			{
				for (var x:int = 0; x < cellsX; x++)
					collection.addItem(new Rectangle(x * cellDimensions.x, y * cellDimensions.y, cellDimensions.x, cellDimensions.y));
			}
			
			
			
			if (graphicModel == null)
				graphicModel = new GraphicModel(new Point());

			var model:IIndexableGraphicModel = new IndexableGraphicModel(graphicModel, collection, index);
			
			var view:IGraphicView = new CellBitmapView(model, bitmap);
			
			return new IndexableGraphicFacade(model, view);
		}
	}

}