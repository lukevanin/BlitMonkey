package engine.common.interfaces 
{
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.IRenderContext;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ITileset 
	{
		
		function draw(renderContext:IRenderContext, transform:ITransform, index:int):void;
		
	}
	
}