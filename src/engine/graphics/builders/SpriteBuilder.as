package engine.graphics.builders 
{
	import engine.graphics.facades.SpriteFacade;
	import flash.geom.Point;
	import engine.graphics.interfaces.ISprite;
	import engine.graphics.interfaces.ISpriteBuilder;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class SpriteBuilder implements ISpriteBuilder
	{
		
		public function SpriteBuilder() 
		{
			
		}
		

		
		public function buildSprite(position:Point):ISprite 
		{
			return new SpriteFacade(position);
		}
		
	}

}