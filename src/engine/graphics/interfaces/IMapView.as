package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMapView extends IGraphicView
	{
		
		function invalidateAt(x:int, y:int):void;
		
		function invalidateAll():void;
		
	}
	
}