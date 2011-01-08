package engine.config.models 
{
	import engine.collection.interfaces.IIterable;
	import engine.collection.interfaces.IIterator;
	import engine.collection.interfaces.ISafeDictionary;
	import engine.config.interfaces.IConfigProvider;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ConfigCollectionModel implements IConfigProvider
	{
		
		private var _collection:ISafeDictionary;
		
		
		public function ConfigCollectionModel(collection:ISafeDictionary) 
		{
			this._collection = collection;
		}
		
		
		public function getConfig(id:String):Object 
		{
			return this._collection.getItem(id);
		}
		
		public function getIterator():IIterator 
		{
			return this._collection.getIterator();
		}
		
	}

}