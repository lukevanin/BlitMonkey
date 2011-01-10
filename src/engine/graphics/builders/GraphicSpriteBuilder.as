package engine.graphics.builders 
{
	import engine.graphics.facades.GraphicSpriteFacade;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicSprite;
	import engine.graphics.interfaces.IGraphicSpriteBuilder;
	import engine.graphics.interfaces.ISpriteBuilder;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GraphicSpriteBuilder implements IGraphicSpriteBuilder 
	{
		private var _spriteBuilder:ISpriteBuilder;
		
		
		public function GraphicSpriteBuilder(spriteBuilder:ISpriteBuilder) 
		{
			this._spriteBuilder = spriteBuilder;
		}
		

		public function buildSprite(graphic:IGraphic, position:Point = null):IGraphicSprite 
		{
			if (position == null)
				position = new Point();
			
			return new GraphicSpriteFacade(this._spriteBuilder.buildSprite(position), graphic);
		}
		
	}

}