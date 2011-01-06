package engine.framework.providers 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.collection.SafeDictionary;
	import engine.framework.interfaces.IMediaFactory;
	import engine.framework.interfaces.IMediaProvider;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class MediaProvider implements IMediaProvider
	{
		
		private var _media:ISafeDictionary;
		
		private var _mediaFactory:IMediaFactory;
		
		
		public function MediaProvider(mediaFactory:IMediaFactory) 
		{
			this._media = new SafeDictionary():
			
			this._mediaFactory = mediaFactory;
		}
		

		public function getBitmap(id:String):BitmapData 
		{
			
		}
		
	}

}