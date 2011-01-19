package engine.common.interfaces 
{
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ITileset 
	{
		
		function getSize(index:int):Point;
		
		function draw(renderContext:IRenderContext, transform:ITransform, index:int):void;
		
	}
	
}