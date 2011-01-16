package engine.graphics.builders 
{
	import engine.graphics.facades.BitmapGraphicFacade;
	import flash.display.BitmapData;
	import engine.graphics.interfaces.IBitmapGraphicBuilder;
	import engine.graphics.interfaces.IGraphic;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapGraphicBuilder implements IBitmapGraphicBuilder 
	{
		
		public function BitmapGraphicBuilder() 
		{
			
		}
		

		
		public function buildBitmapGraphic(bitmap:BitmapData, area:Rectangle = null):IGraphic 
		{
			if (area == null)
				area = bitmap.rect;
			
			return new BitmapGraphicFacade(bitmap);
		}
		
	}

}