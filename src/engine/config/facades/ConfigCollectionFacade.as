package engine.config.facades 
{
	import engine.collection.interfaces.IIterable;
	import engine.collection.interfaces.ISafeDictionary;
	import engine.config.interfaces.IConfigProvider;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ConfigCollectionFacade implements IConfigProvider 
	{
		
		private var _dictionary:ISafeDictionary;
		
		
		
		public function ConfigCollectionFacade(dictionary:ISafeDictionary) 
		{
			this._dictionary = dictionary;
		}

		
		
		public function getConfig(id:String):Object 
		{
			return this._dictionary.getItem(id);
		}
		

		public function getIterator():IIterable 
		{
			return this._dictionary.getIterator();
		}
		
	}

}