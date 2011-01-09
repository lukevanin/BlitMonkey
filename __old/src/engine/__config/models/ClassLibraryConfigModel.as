package engine.config.models 
{
	import engine.config.interfaces.IClassLibraryConfig;
	import engine.config.interfaces.ILibraryConfig;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ClassLibraryConfigModel implements IClassLibraryConfig
	{
		
		private var _className:String;
		
		//private var _library:ILibraryConfig;
		
		
		public function get className():String
		{
			return this._className;
		}
		
		
		//public function get id():String 
		//{
			//return this._library.id;
		//}
		
		
		//public function ClassLibraryConfigModel(className:String, library:ILibraryConfig) 
		public function ClassLibraryConfigModel(className:String) 
		{
			this._className = className;
			
			//this._library = library;
		}
		

		
		/**
		 * Example XML:
		 * 		<library type="class" className="...">
		 * 
		 * @param	xml
		 * @return
		 */
		/*public function parseXml(xml:XML):void
		{
			this._className = xml.@className.toString();
		}*/
		
		
		
		/*public static function create(xml:XML):ClassLibraryConfigModel
		{
			var config:ClassLibraryConfigModel = new ClassLibraryConfigModel();
			
			config.parseXml(xml);
			
			return config;
		}*/
		
	}

}