package engine.graphics.interfaces 
{
	import engine.geometry.interfaces.ITransform;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ITile 
	{
		
		function draw(renderContext:IRenderContext, transform:ITransform):void;
	}
	
}