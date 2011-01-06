package engine.graphics.facades 
{
	import engine.graphics.interfaces.ISprite;
	import engine.graphics.interfaces.ISprites;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class SpritesFacade implements ISprites
	{
		
		private var _sprites:Vector.<ISprite>;
		
		
		public function get numSprites():int
		{
			return this._sprites.length;
		}
		
		
		public function SpritesFacade(sprites:Vector.<ISprite>) 
		{
			this._sprites = sprites;
		}
		
		
		
		public function add(sprite:ISprite):void
		{
			this._sprites.push(sprite);
		}
		
		
		public function getAt(index:int):ISprite
		{
			return this._sprites[index];
		}
		
		
		
		public function removeAt(index:int):ISprite
		{
			return this._sprites.splice(index, 1)[0];
		}
		
	}

}