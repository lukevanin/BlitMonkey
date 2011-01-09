package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICompositeGraphicBuilder 
	{
		function buildGraphic(graphics:Vector.<IGraphic>):ICompositeGraphic;
	}
	
}