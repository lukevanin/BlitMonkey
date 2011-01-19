package engine.graphics.interfaces 
{
	import engine.geometry.interfaces.ITransform;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICompositeGraphicModel 
	{
		function get transform():ITransform;
		
		function get numGraphics():int;
		
		function addGraphic(graphic:IGraphic):void;
		
		function getGraphicAt(index:int):IGraphic;
		
		function removeGraphicAt(index:int):IGraphic;
	}
	
}