package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimations 
	{
		
		function addAnimation(id:String, animation:IAnimation):void;
		
		function removeAnimation(id:String):IAnimation;
		
		function hasAnimation(id:String):Boolean;
		
		function getAnimation(id:String):IAnimation;
		
	}
	
}