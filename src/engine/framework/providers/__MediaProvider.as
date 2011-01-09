package engine.framework.providers 
{
	import engine.common.interfaces.IDictionary;
	import engine.common.Dictionary;
	import engine.framework.interfaces.IMediaFactory;
	import engine.framework.interfaces.IMediaProvider;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __MediaProvider implements IMediaProvider
	{
		
		private var _media:IDictionary;
		
		private var _mediaFactory:IMediaFactory;
		
		
		public function MediaProvider(mediaFactory:IMediaFactory) 
		{
			this._media = new Dictionary():
			
			this._mediaFactory = mediaFactory;
		}
		

		public function getBitmap(id:String):BitmapData 
		{
			
		}
		
	}

}