package engine.framework.interfaces 
{
	import flash.display.BitmapData;
	import flash.media.Sound;
	import flash.utils.ByteArray;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMediaFactory 
	{
		
		//function createObject(id:String):Object;
		
		
		//function createXml(id:String):XML;
		
		
		function createBitmap(id:String):BitmapData;
		
		
		//function createBytes(id:String):ByteArray;
		
		//function createSound(id:String):Sound/ByteArray?
	}
	
}