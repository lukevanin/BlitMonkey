package engine.graphics.builders 
{
	import engine.common.interfaces.ITileset;
	import engine.graphics.interfaces.ITile;
	import engine.graphics.Tile;
	import engine.graphics.Tileset;
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetBuilder 
	{
		
		public function TilesetBuilder() 
		{
			
		}
		
		
		
		public function buildTileset(bitmapData:BitmapData, tileSize:Point):ITileset
		{
			return new Tileset(this.buildTiles(bitmapData, tileSize));
		}
		
		
		
		private function buildTiles(bitmapData:BitmapData, tileSize:Point):Vector.<ITile>
		{
			var tx:int = bitmapData.width / tileSize.x;
			
			var ty:int = bitmapData.height / tileSize.y;
			
			var tiles:Vector.<ITile> = new Vector.<ITile>(tx * ty, true);
			
			for (var y:int = 0; y < ty; y++)
			{
				for (var x:int = 0; x < tx; x++)
					tiles[(y * tx) + x] = new Tile(bitmapData, new Rectangle(x * tileSize.x, y * tileSize.y, tileSize.x, tileSize.y));
			}
			
			return tiles;
		}
			
		
	}

}