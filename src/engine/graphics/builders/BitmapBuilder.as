package engine.graphics.builders 
{
	import engine.framework.interfaces.IAssetFactory;
	import engine.graphics.interfaces.IBitmapBuilder;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapBuilder implements IBitmapBuilder
	{
		
		private var _assetFactory:IAssetFactory;
		
		
		public function BitmapBuilder(assetFactory:IAssetFactory) 
		{
			this._assetFactory = assetFactory;
		}
		
		
		public function buildBitmap(asset:String):BitmapData
		{
			return (this._assetFactory.createObject(asset) as Bitmap).bitmapData;
		}
		
	}

}