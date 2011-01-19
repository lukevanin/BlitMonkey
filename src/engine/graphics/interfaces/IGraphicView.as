package engine.graphics.interfaces 
{
	import engine.framework.interfaces.IView;
	import engine.geometry.interfaces.ITransform;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IGraphicView extends IView
	{
		
		function get area():Rectangle;
		
		
		function draw(renderContext:IRenderContext, transform:ITransform):void;
		
	}
	
}