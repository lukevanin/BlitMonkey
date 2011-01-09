package engine.common 
{
	import engine.common.interfaces.IIterator;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class DictionaryIterator implements IIterator
	{
		
		private var _numItems:int;
		
		private var _index:int;
		
		private var _keys:Vector.<*>;
		
		private var _values:Vector.<*>;
		
		
		public function get hasNext():Boolean 
		{
			return this._index < this._numItems;
		}
		
		public function get key():* 
		{
			return this._keys[this._index];
		}
		
		public function get value():* 
		{
			return this._values[this._index];
		}
		
		
		public function DictionaryIterator(numItems:int, keys:Vector.<*>, values:Vector.<*>) 
		{
			this._keys = keys;
			
			this._values = values;
			
			this._numItems = numItems;
			
			/*for (var k:* in dictionary)
			{
				this._keys[this._numItems] = k;
				
				this._values[this._numItems] = dictionary[k];
				
				this._numItems ++;
			}*/
			
			this.reset();
		}
		

		
		public function reset():void
		{
			this._index = 0;
		}
		
		
		public function next():void 
		{
			if (this.hasNext)
				this._index ++;
			else
				throw new RangeError("Out of range");
		}
		
	}

}