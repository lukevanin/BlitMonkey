package engine.graphics.facades 
{
	import flash.geom.Point;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicSprite;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.interfaces.ISprite;

	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GraphicSpriteFacade implements IGraphicSprite
	{
		
		private var _sprite:ISprite;
		
		private var _graphic:IGraphic;
		
		
		
		public function get position():Point
		{
			return this._sprite.position;
		}
		
		public function set position(position:Point):void
		{
			this._sprite.position = position;
		}

		
		
		public function GraphicSpriteFacade(sprite:ISprite, graphic:IGraphic) 
		{
			this._sprite = sprite;
			
			this._graphic = graphic;
		}
		

		
		
		public function draw(renderContext:IRenderContext, position:Point):void 
		{
			this._graphic.draw(renderContext, position.add(this._sprite.position));
		}
		

		

		
	}

}