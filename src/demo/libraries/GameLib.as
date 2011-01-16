package demo.libraries 
{

	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameLib
	{
		
		//public static const NAMESPACE:Namespace = new Namespace("m", "https://lukevanin@github.com/lukevanin/BlitMonkey.git");
			
		//[Embed(source='../../../assets/xml/config.xml', mimeType="application/octet-stream")]
		//public static const CONFIG:Class;
		
		
		[Embed(source='../../../assets/graphics/circle_tiles-pave.png')]
		public static const TILE_PAVE:Class;		
		
		
		[Embed(source='../../../assets/graphics/harvestmoonfriendsofmineraltown_jack-basic_sheet.png')]
		public static const JACK_SPRITE_SHEET:Class;
		
		
	}

}