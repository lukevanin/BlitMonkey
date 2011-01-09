package engine.config.interfaces 
{
	import engine.graphics.interfaces.ICanvasConfig;

	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IXmlConfigFactory 
	{
		
		function createConfig(xml:XML):Object;

		
		/*function createGameConfig(xml:XML):IGameConfig;
		
		
		function createLibraryConfig(xml:XML):ILibraryConfig; 
		
		
		function createCanvasConfig(xml:XML):ICanvasConfig;
		
		
		function createBitmapConfig(xml:XML):IBitmapConfig;
		
		
		function createCellsConfig(xml:XML):ICellsConfig;
		
		
		function createCellConfig(xml:XML):ICellConfig;
		
		
		function createAnimationConfig(xml:XML):IAnimationConfig;
		
		
		function createAnimationFrameConfig(xml:XML):IAnimationFrameConfig;*/
		
		
		
	}
	
}