package engine.config.models 
{
	import engine.config.interfaces.IBitmapConfig;
	import engine.config.interfaces.IConfigFactory;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BitmapConfigModel implements IBitmapConfig
	{
		
		
		private var _asset:String;
		
		
		public function get asset():String
		{
			return this._asset;
		}
		
		
		
		public function BitmapConfigModel() 
		{

		}
		
		
		/**
		 * Example XML:
		 * 		<bitmap id="abu" asset="gameLib.ABU" />
		 * 
		 * @param	xml
		 */
		public function parseXml(xml:XML):void
		{
			this._asset = xml.@asset.toString();
		}
		
		
		
		public static function create(xml:XML):BitmapConfigModel
		{
			var config:BitmapConfigModel = new BitmapConfigModel();
			
			config.parseXml(xml);
			
			return config;
		}
		
	}

}