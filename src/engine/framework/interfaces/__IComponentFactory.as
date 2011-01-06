package engine.framework.interfaces 
{
	import engine.config.interfaces.IGameConfig;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.ICanvas;
	import engine.graphics.interfaces.ICells;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface __IComponentFactory extends IMediaFactory
	{
		
		function createCanvas(id:String):ICanvas;
		
		function createCells(id:String):ICells;
		
		function createAnimation(id:String):IAnimation;
		
	}
	
}