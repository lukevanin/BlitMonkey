package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ISprites 
	{
		
		
		function get numSprites():int;
		
		
		function add(sprite:ISprite):void;
		
		
		function removeAt(index:int):ISprite;
		
		
		function getAt(index:int):ISprite;
		
	}
	
}