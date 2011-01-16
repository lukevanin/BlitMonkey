package engine.graphics.builders 
{
	import engine.common.utils.BitmapUtil;
	import engine.framework.interfaces.IAssetFactory;
	import engine.graphics.facades.BitmapFacade;
	import engine.graphics.interfaces.IBitmap;
	import engine.graphics.interfaces.IBitmapBuilder;
	import engine.graphics.interfaces.IBitmapModel;
	import engine.graphics.interfaces.IGraphicModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.ITransform;
	import engine.graphics.models.BitmapModel;
	import engine.graphics.models.GraphicModel;
	import engine.graphics.models.TransformModel;
	import engine.graphics.views.BitmapView;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.IBitmapDrawable;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.geom.Transform;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapBuilder
	{
		
		
		public function BitmapBuilder() 
		{
		}
		
		
		public function buildBitmap(source:IBitmapDrawable, area:Rectangle = null, transform:ITransform = null):IBitmap
		{
			var bitmapData:BitmapData = BitmapUtil.getBitmapData(source);
			
			if (transform == null)
				transform = new Transform();
			
			if (area == null)
				area = bitmapData.rect;
				
			var model:IBitmapModel = new BitmapModel(transform, area);
			
			var view:IGraphicView = new BitmapView(bitmapData, model);
				
			return new BitmapFacade(model, view);
		}
		
	}

}