package engine.config.factories 
{
	import engine.collection.interfaces.ISafeDictionary;
	import engine.common.StringUtil;
	import engine.config.enums.XmlConfigEnum;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.config.models.CanvasConfigModel;
	import engine.graphics.interfaces.ICanvasConfig;
	import flash.display.PixelSnapping;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlCanvasConfigFactory implements IXmlConfigFactory 
	{
		
		public function XmlCanvasConfigFactory() 
		{
			
		}
		

		/*public function createConfig(xml:XML):Object 
		{
			var config:ISafeDictionary = new ISafeDictionary();
			
			for each (var canvasXml:XML in xml.elements(XmlConfigEnum.CANVAS))
				config.addItem(canvasXml.@id.toString(), this.createCanvasConfig(canvasXml));
				
			return config;
		}*/
		
		
		
		public function createConfig(xml:XML):Object 
		{
			return this.createCanvasConfig(xml);
		}
		
		
		
		private function createCanvasConfig(xml:XML):ICanvasConfig
		{
			var area:Rectangle;
			
			var pixelSnapping:String;
			
			var smoothing:Boolean;
			
			var isTransparent:Boolean;
			
			var backgroundColour:uint;
			
			
			area = StringUtil.stringToRectangle(xml.@area.toString());
			
			
			if (xml.@pixelSnapping != undefined)
				pixelSnapping = xml.@pixelSnapping.toString();
			else
				pixelSnapping = PixelSnapping.AUTO;
			
				
			if (xml.@smoothing != undefined)
				smoothing = StringUtil.stringToBoolean(xml.@smoothing.toString());
			else
				smoothing = false;
			
				
			if (xml.@isTransparent != undefined)
				isTransparent = StringUtil.stringToBoolean(xml.@isTransparent.toString());
			else
				isTransparent = true;
				
				
			if (xml.@backgroundColour != undefined)
				backgroundColour = StringUtil.stringToUint(xml.@backgroundColour.toString());
			else
				backgroundColour = 0x00000000;
				
			return new CanvasConfigModel(area, pixelSnapping, smoothing, isTransparent, backgroundColour);
		}
		
	}

}