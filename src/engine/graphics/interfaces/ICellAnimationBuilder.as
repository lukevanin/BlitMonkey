package engine.graphics.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellAnimationBuilder 
	{
		
		function buildAnimation(animation:IAnimation, cells:ICells):IAnimation;
		
	}
	
}