package engine.graphics.facades 
{
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.interfaces.ISprite;
	import flash.errors.IllegalOperationError;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class SpriteFacade implements ISprite
	{
		
		private var _position:Point;
		
		
		public function get position():Point 
		{
			return this._position.clone();
		}
		
		public function set position(position:Point):void 
		{
			this._position = position.clone();
		}
		
	
		
		
		public function SpriteFacade(position:Point) 
		{
			this._position = position.clone();
		}
		

		
		public function draw(renderContext:IRenderContext, position:Point):void 
		{
			throw new IllegalOperationError("Not implemented");
		}
		

		
	}

}