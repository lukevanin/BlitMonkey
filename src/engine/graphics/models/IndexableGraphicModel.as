package engine.graphics.models 
{
	import engine.common.interfaces.ICollection;
	import engine.graphics.interfaces.IGraphicModel;
	import engine.graphics.interfaces.IIndexableGraphicModel;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class IndexableGraphicModel implements IIndexableGraphicModel
	{
		private var _index:int;
		
		private var _graphic:IGraphicModel;
		
		private var _collection:ICollection;

		
		public function get index():int 
		{
			return this._index;
		}
		
		public function set index(index:int):void 
		{
			this._index = index;
		}
		
		
		public function get position():Point 
		{
			return this._graphic.position;
		}
		
		public function set position(position:Point):void 
		{
			this._graphic.position = position;
		}

		
		
		
		public function get numItems():int
		{
			return this._collection.numItems;
		}
		
		
		public function IndexableGraphicModel(graphic:IGraphicModel, collection:ICollection, index:int) 
		{
			this._collection = collection;
			
			this._graphic = graphic;
			
			this._index = index;
		}
		
		
		
		public function addItem(item:*):void
		{
			this._collection.addItem(item);
		}
		
		
		
		public function getItemAt(index:int):*
		{
			return this._collection.getItemAt(index);
		}
		
		
		
		public function removeItemAt(index:int):*
		{
			return this._collection.removeItemAt(index);
		}
		
		
	}

}