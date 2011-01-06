package engine.framework.interfaces 
{
	import flash.display.BitmapData;
	import flash.media.Sound;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAssetFactory 
	{
		
		function createObject(path:String):Object;
		
		
	}
	
}