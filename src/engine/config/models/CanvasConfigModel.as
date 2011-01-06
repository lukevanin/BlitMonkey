package engine.config.models 
{
	import engine.common.StringUtil;
	import engine.graphics.interfaces.ICanvasConfig;
	import flash.display.PixelSnapping;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CanvasConfigModel implements ICanvasConfig
	{
		
		private var _area:Rectangle;
		
		private var _pixelSnapping:String;
		
		private var _smoothing:Boolean;
		
		private var _isTransparent:Boolean;
		
		private var _backgroundColour:uint;
		
		
		
		
		public function get area():Rectangle 
		{
			return this._area;
		}
		
		public function get pixelSnapping():String 
		{
			return this._pixelSnapping;
		}
		
		public function get smoothing():Boolean 
		{
			return this._smoothing;
		}
		
		public function get isTransparent():Boolean 
		{
			return this._isTransparent;
		}
		
		public function get backgroundColour():uint 
		{
			return this._backgroundColour;
		}
		
		
		public function CanvasConfigModel() 
		{
			
		}
		
		
		
		/**
		 * Example XML:
		 * 		<canvas id="stageCanvas" area="0,0,640,480" pixelSnapping="always" smoothing="false" isTransparent="false" backgroundColour="0x00ff00ff" />
		 * 
		 * @param	xml
		 */
		public function parseXml(xml:XML):void
		{
			this._area = StringUtil.stringToRectangle(xml.@area.toString());
			
			
			if (xml.@pixelSnapping != undefined)
				this._pixelSnapping = xml.@pixelSnapping.toString();
			else
				this._pixelSnapping = PixelSnapping.AUTO;
			
				
			if (xml.@smoothing != undefined)
				this._smoothing = StringUtil.stringToBoolean(xml.@smoothing.toString());
			else
				this._smoothing = false;
			
				
			if (xml.@isTransparent != undefined)
				this._isTransparent = StringUtil.stringToBoolean(xml.@isTransparent.toString());
			else
				this._isTransparent = true;
				
				
			if (xml.@backgroundColour != undefined)
				this._backgroundColour = StringUtil.stringToUint(xml.@backgroundColour.toString());
			else
				this._backgroundColour = 0x00000000;
		
		}
		
		
		
		public static function create(xml:XML):CanvasConfigModel
		{
			var config:CanvasConfigModel = new CanvasConfigModel();
			
			config.parseXml(xml);
			
			return config;
		}
		
		
	}

}