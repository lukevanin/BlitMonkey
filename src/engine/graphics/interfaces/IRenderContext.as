package engine.graphics.interfaces 
{
	import engine.geometry.interfaces.ITransform;
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IRenderContext
	{
		
		function blit(bitmap:BitmapData, sourceArea:Rectangle, transform:ITransform):void;
		
	}
	
}