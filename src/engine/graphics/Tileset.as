package engine.graphics 
{
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.ITileset;
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.IRenderContext;
	import engine.graphics.interfaces.ITile;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class Tileset implements ITileset
	{
		
		private var _tiles:Vector.<ITile>;
		
		

		
		public function Tileset(tiles:Vector.<ITile>) 
		{
			this._tiles = tiles;
		}
		
		
		
		public function getSize(index:int):Point
		{
			return this._tiles[index].size;
		}
		
		

		public function draw(renderContext:IRenderContext, transform:ITransform, index:int):void 
		{
			this._tiles[index].draw(renderContext, transform);
		}
		
		
		/*private function getArea(index:int):Rectangle
		{
			// TODO: cache rectangle areas
			var tx:int = this._bitmapData.width / this._tileSize.x;
			
			var ty:int = this._bitmapData.height / this._tileSize.y;
			
			var x:int = i % tx;
			
			var y:int = Math.floor(i / tx);
			
			return new Rectangle(x * this._tileSize.x, y * this._tileSize.y, this._tileSize.x, this._tileSize.y);
		}*/
		
		
	}

}