package engine.collection 
{
	import engine.collection.interfaces.IIterator;
	import engine.collection.interfaces.ISafeDictionary;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class SafeDictionary implements ISafeDictionary
	{
		private var _items:Dictionary;
		
		private var _numItems:int;
		
		
		
		public function get numItems():int
		{
			return this._numItems;
		}
		
		
		public function SafeDictionary() 
		{
			this._items = new Dictionary();
			
			this._numItems = this.countItems();
		}
		
		
		private function countItems():int
		{
			var count:int = 0;
			
			for each (var item:Object in this._items)
				count ++;
				
			return count;
		}
		

		public function hasItem(key:*):Boolean 
		{
			return (this._items[key] != undefined);
		}
		
		public function getItem(key:*):* 
		{
			if (!this.hasItem(key))
				throw new Error(key + " not in collection");
				
			return this._items[key];
		}
		
		public function addItem(key:*, value:*):void 
		{
			if (this.hasItem(key))
				throw new Error(key + " already in collection");
				
			this._items[key] = value;
			
			this._numItems ++;			
		}
		
		public function removeItem(key:*):* 
		{
			if (!this.hasItem(key))
				throw new Error(key + " not in collection");
				
			var item:Object = this.getItem(key);
			
			delete this._items[key];
			
			this._numItems --;
			
			return item;
		}
		
		
		
		public function getIterator():IIterator
		{
			return new DictionaryIterator(this._items);
		}
		
	}

}