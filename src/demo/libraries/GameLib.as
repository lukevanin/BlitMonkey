package demo.libraries 
{

	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameLib
	{
		
		[Embed(source='../../../assets/xml/config.xml', mimeType="application/octet-stream")]
		public static const CONFIG:Class;
		
		
		[Embed(source='../../../assets/aladdin sprites/Abu.png')]
		public static const ABU:Class;
		
		
		[Embed(source='../../../assets/aladdin sprites/AladdinTown.png')]
		public static const BACKGROUND:Class;
		
	
		
	}

}