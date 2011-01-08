package engine.framework.factories 
{
	import engine.framework.interfaces.IAssetFactory;
	import engine.framework.interfaces.ILibraries;
	import engine.framework.interfaces.ILibraryProvider;
	import flash.display.BitmapData;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AssetFactory implements IAssetFactory
	{
		
		private var _libraryProvider:ILibraryProvider;
		
		private var _pathDelimiter:String;
		
		
		
		public function AssetFactory(libraryProvider:ILibraryProvider, pathDelimiter:String = ".") 
		{
			this._libraryProvider = libraryProvider;
			
			this._pathDelimiter = pathDelimiter;
		}
		
		
		
		private function getClass(path:String):Class
		{
			var parts:Array = path.split(this._pathDelimiter);
			
			var libraryId:String = parts[0];
			
			var classId:String = parts[1];
			
			return this._libraryProvider.getLibrary(libraryId).getClass(classId);
		}	
		
		
		
		public function createObject(path:String):Object
		{
			var classReference:Class = this.getClass(path);
			
			return new classReference();
		}

		
		
		/*public static function create(libraryProvider:ILibraryProvider, pathDelimiter:String = "."):AssetFactory
		{
			return new AssetFactory(libraryProvider, pathDelimiter);
		}*/

		
	}

}