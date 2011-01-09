package engine.graphics.interfaces 
{
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICanvasBuilder 
	{
		
		function buildCanvas(area:Rectangle, pixelSnapping:String, transparent:Boolean, smoothing:Boolean, backgroundColour:uint):ICanvas;
		
	}
	
}