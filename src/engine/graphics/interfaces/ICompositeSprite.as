package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICompositeSprite extends ISprite
	{
		
		
		function get numSprites():int;
		
		
		function addSprite(sprite:ISprite):void;
		
		
		function removeSpriteAt(index:int):ISprite;
		
		
		function getSpriteAt(index:int):ISprite;
		
	}
	
}