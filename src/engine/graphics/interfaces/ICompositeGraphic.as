package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICompositeGraphic extends IGraphic
	{
		
		function get numGraphics():int;
		
		function addGraphic(graphic:IGraphic):void;
		
		function getGraphicAt(index:int):IGraphic;
		
		function removeGraphicAt(index:int):IGraphic;
	}
	
}