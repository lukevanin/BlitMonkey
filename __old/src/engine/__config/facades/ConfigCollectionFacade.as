package engine.config.facades 
{
	import engine.collection.interfaces.IIterable;
	import engine.collection.interfaces.IDictionary;
	import engine.config.interfaces.IConfigProvider;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ConfigCollectionFacade implements IConfigProvider 
	{
		
		private var _dictionary:IDictionary;
		
		
		
		public function ConfigCollectionFacade(dictionary:IDictionary) 
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