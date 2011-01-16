package engine.graphics.interfaces 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ISprite extends IGraphic, IStateContext
	{
		
		function get position():Point;
		
		function set position(position:Point):void;
				
	}
	
}