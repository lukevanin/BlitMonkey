package engine.graphics.interfaces 
{
	import engine.framework.interfaces.IView;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IGraphicView extends IView
	{
		
		function get size():Point;
		
		
		function draw(renderContext:IRenderContext):void;
		
	}
	
}