package engine.framework.interfaces 
{
	import flash.display.BitmapData;
	import flash.media.Sound;
	import flash.utils.ByteArray;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMediaProvider 
	{
		
		function getBitmap(id:String):BitmapData;
		
	}
	
}