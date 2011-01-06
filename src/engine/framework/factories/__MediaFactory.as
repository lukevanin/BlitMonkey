package engine.framework.factories 
{
	import engine.config.interfaces.IGameConfig;
	import engine.framework.interfaces.IGameAssetFactory;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __MediaFactory implements IMediaFactory
	{
		
		private var _gameConfig:IGameConfig;
		
		private var _assetFactory:IGameAssetFactory;
		
		
		
		public function MediaFactory(gameConfig:IGameConfig, assetFactory:IGameAssetFactory) 
		{
			this._gameConfig = gameConfig;
			
			this._assetFactory = assetFactory;
		}
		
		
		
		
		
		public function createBitmap(id:String):BitmapData
		{
			return (this._assetFactory.createObject(this._gameConfig.getBitmap(id).asset) as Bitmap).bitmapData;
		}		
		
		
		
		
		public static function create(gameConfig:IGameConfig, assetFactory:IGameAssetFactory):MediaFactory
		{
			return new MediaFactory(gameConfig, assetFactory);
		}
		
	}

}