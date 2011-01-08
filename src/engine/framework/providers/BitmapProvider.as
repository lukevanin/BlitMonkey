package engine.framework.providers 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.collection.SafeDictionary;
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.framework.interfaces.IBitmapFactory;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFactory;
	import engine.graphics.interfaces.IAnimationProvider;
	import engine.graphics.interfaces.IBitmapProvider;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapProvider implements IBitmapProvider
	{
		
		private var _bitmap:ISafeDictionary;
		
		private var _bitmapFactory:IBitmapFactory;
		
		
		public function BitmapProvider(bitmapFactory:IBitmapFactory) 
		{
			this._bitmap = new SafeDictionary();
			
			this._bitmapFactory = bitmapFactory;
		}
		

		
		public function getBitmap(id:String):BitmapData 
		{
			if (!this._bitmap.hasItem(id))
				this._bitmap.addItem(id, this._bitmapFactory.createBitmap(id));
			
			return this._bitmap.getItem(id) as BitmapData;
		}
		
		
		/*public static function create(bitmapFactory:IBitmapFactory):BitmapProvider
		{
			return new BitmapProvider(bitmapFactory);
		}*/
		
	}

}