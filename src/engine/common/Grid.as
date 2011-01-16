package engine.common 
{
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.IGrid;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class Grid implements IGrid 
	{
		
		private var _dimensions:Point;
		
		private var _items:Vector.<*>;
		
		
		public function get dimensions():Point 
		{
			return this._dimensions.clone();
		}

		
		
		public function Grid(dimensions:Point) 
		{
			this._dimensions = dimensions.clone();
			
			this._items = new Vector.<*>(dimensions.x * dimensions.y, true);
		}
		
		
		
		public function setItemAt(item:*, position:Point):void 
		{
			this._items[int((position.y * this._dimensions.x) + position.x)] = item;
		}
		
		
		public function getItemAt(position:Point):* 
		{
			return this._items[int((position.y * this._dimensions.x) + position.x)];
		}
		
	}

}