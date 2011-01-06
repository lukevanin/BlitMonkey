package engine.framework.factories 
{
	import engine.config.interfaces.IBitmapConfigCollection;
	import engine.config.interfaces.IGameConfig;
	import engine.framework.interfaces.IBitmapFactory;
	import engine.framework.interfaces.IAssetFactory;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapFactory implements IBitmapFactory
	{
		
		private var _config:IBitmapConfigCollection;
		
		private var _assetFactory:IAssetFactory;
		
		
		
		public function BitmapFactory(config:IBitmapConfigCollection, assetFactory:IAssetFactory) 
		{
			this._config = config;
			
			this._assetFactory = assetFactory;
		}
		
		
		
		
		
		public function createBitmap(id:String):BitmapData
		{
			return (this._assetFactory.createObject(this._config.getBitmap(id).asset) as Bitmap).bitmapData;
		}		
		
		
		
		public static function create(config:IBitmapConfigCollection, assetFactory:IAssetFactory):BitmapFactory 
		{
			return  new BitmapFactory(config, assetFactory);
		}
		
		
	}

}