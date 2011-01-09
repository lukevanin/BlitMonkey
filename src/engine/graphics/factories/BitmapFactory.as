package engine.graphics.factories 
{

	import engine.framework.interfaces.IAssetFactory;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.graphics.interfaces.IBitmapBuilder;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapFactory implements IObjectFactory
	{
		
		//private var _config:IConfig;
		
		private var _bitmapBuilder:IBitmapBuilder;
		
		
		
		//public function BitmapFactory(config:IConfig, bitmapBuilder:IBitmapBuilder) 
		public function BitmapFactory(bitmapBuilder:IBitmapBuilder) 
		{
			//this._config = config;
			
			this._bitmapBuilder = bitmapBuilder;
		}
		
		
		
		public function createObject(config:IConfig):Object 
		{
			return this.createBitmap(config);
		}		
		
		
		private function createBitmap(config:IConfig):BitmapData
		{
			//var config:IConfig = this._config.getConfig(id);
			
			var asset:String = config.getProperty("asset");
			
			return this._bitmapBuilder.buildBitmap(asset);
		}
		
		
			

		
		
		
		/*public static function create(config:IBitmapConfigCollection, assetFactory:IAssetFactory):BitmapFactory 
		{
			return  new BitmapFactory(config, assetFactory);
		}*/
		
		
	}

}