package engine.config.models 
{
	import engine.config.interfaces.IClassLibraryConfig;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ClassLibraryConfigModel implements IClassLibraryConfig
	{
		
		private var _className:String;
		
		
		public function get className():String
		{
			return this._className;
		}
		
		
		public function ClassLibraryConfigModel() 
		{
			
		}
		
		
		/**
		 * Example XML:
		 * 		<library type="class" className="...">
		 * 
		 * @param	xml
		 * @return
		 */
		public function parseXml(xml:XML):void
		{
			this._className = xml.@className.toString();
		}
		
		
		
		public static function create(xml:XML):ClassLibraryConfigModel
		{
			var config:ClassLibraryConfigModel = new ClassLibraryConfigModel();
			
			config.parseXml(xml);
			
			return config;
		}
		
	}

}