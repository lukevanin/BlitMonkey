package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IAnimationBuilder 
	{
		
		function buildAnimation(frames:Vector.<IAnimationFrame>):IAnimation;
		
	}
	
}