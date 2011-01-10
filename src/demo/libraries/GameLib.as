package demo.libraries 
{

	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameLib
	{
		
		public static const NAMESPACE:Namespace = new Namespace("m", "https://lukevanin@github.com/lukevanin/BlitMonkey.git");
		
			
		[Embed(source='../../../assets/xml/config.xml', mimeType="application/octet-stream")]
		public static const CONFIG:Class;
		
		
		[Embed(source='../../../assets/graphics/background.png')]
		public static const BACKGROUND:Class;		
		
		
		[Embed(source='../../../assets/graphics/Abu.png')]
		public static const ABU:Class;
		
		
	}

}