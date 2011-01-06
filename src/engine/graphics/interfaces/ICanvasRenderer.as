package engine.graphics.interfaces 
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICanvasRenderer
	{
		
		function render(canvas:ICanvas, position:Point):void;
		
	}
	
}