package engine.common 
{
	import engine.common.interfaces.ICollection;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class Collection implements ICollection 
	{
		private var _items:Vector.<*>;
		
		
		public function get numItems():int 
		{
			return this._items.length;
		}


		public function Collection() 
		{
			this._items = new Vector.<*>;
		}
		
		
		public function addItem(item:*):void 
		{
			this._items.push(item);
		}
		
		public function getItemAt(index:int):* 
		{
			return this._items[index];
		}
		
		public function removeItemAt(index:int):* 
		{
			return this._items.splice(index, 1)[0];
		}
		
		
		
		
		public function clone():ICollection
		{
			var collection:ICollection = new Collection();
			
			for (var i:int = 0; i < this.numItems; i++)
				collection.addItem(this.getItemAt(i));
				
			return collection;
		}
		
		
		public static function fromArray(a:Array):ICollection
		{
			var collection:ICollection = new Collection();
			
			for (var i:int = 0; i < a.length; i++)
				collection.addItem(a[i]);
				
			return collection;
		}
		
	}

}