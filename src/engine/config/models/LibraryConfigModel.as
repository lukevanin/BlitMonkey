package engine.config.models 
{
	import engine.config.interfaces.ILibraryConfig;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class LibraryConfigModel implements ILibraryConfig 
	{
		
		private var _id:String;
		
		

		public function get id():String 
		{
			return this._id;
		}
		
		
		
		public function LibraryConfigModel(id:String) 
		{
			this._id = id;
		}
		

	}

}