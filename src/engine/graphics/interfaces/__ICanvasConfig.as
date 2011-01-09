package engine.graphics.interfaces 
{
	import flash.display.PixelSnapping;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface __ICanvasConfig 
	{
		
		function get area():Rectangle;
		
		function get pixelSnapping():String;
		
		function get smoothing():Boolean;
		
		function get isTransparent():Boolean;
		
		function get backgroundColour():uint;
		
		
		
	}
	
}