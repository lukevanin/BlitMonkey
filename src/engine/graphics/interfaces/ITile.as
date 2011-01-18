package engine.graphics.interfaces 
{
	import engine.geometry.interfaces.ITransform;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ITile
	{
		
		function get size():Point;
		
		function draw(renderContext:IRenderContext, transform:ITransform):void;
	}
	
}