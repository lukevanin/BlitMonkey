package engine.graphics.interfaces 
{
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IGraphicSpriteBuilder 
	{
		
		function buildSprite(graphic:IGraphic, position:Point = null):IGraphicSprite;
		
	}
	
}