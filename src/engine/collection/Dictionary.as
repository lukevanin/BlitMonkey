package engine.collection 
{
	import engine.collection.interfaces.IDictionary;
	import engine.collection.interfaces.IIterator;
	import flash.utils.Dictionary;
	/**
	 * Hybrid dictionary object which combines the features of an indexed array a key/value collection
	 * - Stores key/value pairs in the order in which they were added
	 * - Access as an indexed collection (number of items, item at index)
	 * - Access as key/value pair (get value by key, built-in check for overwriting exisiting item, check if key exists)
	 * ...
	 * @author Luke Van In
	 */
	public class Dictionary implements IDictionary
	{
		private var _keys:Vector.<*>;
		
		private var _values:Vector.<*>;
		
		private var _keyIndex:flash.utils.Dictionary;
		
		private var _numItems:int;
		
		
		
		public function get numItems():int
		{
			return this._numItems;
		}
		
		
		public function Dictionary() 
		{
			this._keys = new Vector.<*>;
			
			this._values = new Vector.<*>;
			
			this._numItems = 0;
			
			this._keyIndex = new flash.utils.Dictionary();
		}
		
		
		/*private function countItems():int
		{
			var count:int = 0;
			
			for each (var item:Object in this._items)
				count ++;
				
			return count;
		}*/
		

		public function hasItem(key:*):Boolean 
		{
			return (this._keyIndex[key] != undefined);
		}
		
		public function getItem(key:*):* 
		{
			if (!this.hasItem(key))
				throw new Error(key + " not in collection");
				
			return this._values[this._keyIndex[key]];
		}
		
		public function getItemAt(index:int):*
		{
			return this._values[index];
		}		
		
		public function addItem(key:*, value:*):void 
		{
			if (this.hasItem(key))
				throw new Error(key + " already in collection");
				
			this._keys[this._numItems] = key;
			
			this._values[this._numItems] = value;
			
			this._keyIndex[key] = this._numItems;
			
			this._numItems ++;			
		}
		
		public function removeItem(key:*):* 
		{
			if (!this.hasItem(key))
				throw new Error(key + " not in collection");
				
			var index:int = this._keyIndex[key];
			
			delete this._keyIndex[key];
			
			var value:Object = this._values[index];
			
			this._keys.splice(index, 1);

			this._values.splice(index, 1);
			
			this._numItems --;
			
			return value;
		}
		
		
		
		public function getIterator():IIterator
		{
			return new DictionaryIterator(this._numItems, this._keys, this._values);
		}
		
	}

}