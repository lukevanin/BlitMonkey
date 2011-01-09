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
		
		
		[Embed(source='../../../assets/aladdin sprites/Abu.png')]
		public static const ABU:Class;
		
		
	}

}