package engine.framework.factories 
{
	import engine.config.interfaces.IBitmapConfig;
	import engine.config.interfaces.IConfigProvider;
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
		
		private var _config:IConfigProvider;
		
		private var _assetFactory:IAssetFactory;
		
		
		
		public function BitmapFactory(config:IConfigProvider, assetFactory:IAssetFactory) 
		{
			this._config = config;
			
			this._assetFactory = assetFactory;
		}
		
		
		
		
		
		public function createBitmap(id:String):BitmapData
		{
			var config:IBitmapConfig = this._config.getConfig(id) as IBitmapConfig;
			
			return (this._assetFactory.createObject(config.asset) as Bitmap).bitmapData;
		}		
		
		
		
		/*public static function create(config:IBitmapConfigCollection, assetFactory:IAssetFactory):BitmapFactory 
		{
			return  new BitmapFactory(config, assetFactory);
		}*/
		
		
	}

}