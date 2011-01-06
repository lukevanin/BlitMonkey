package engine.config.interfaces 
{
	import engine.graphics.interfaces.ICanvasConfig;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICanvasConfigCollection 
	{
		
		function getCanvas(id:String):ICanvasConfig;
		
	}
	
}