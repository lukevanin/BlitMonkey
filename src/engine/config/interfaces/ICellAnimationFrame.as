package engine.config.interfaces 
{
	import engine.graphics.interfaces.IAnimationFrame;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICellAnimationFrame extends IAnimationFrame
	{
		
		function get cell():int;
		
	}
	
}