package engine.graphics.views 
{
	import engine.common.interfaces.IGrid;
	import engine.common.interfaces.ITileset;
	import engine.common.interfaces.IView;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.geometry.utils.GeometryUtil;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.interfaces.IMapView;
	import engine.graphics.interfaces.IRenderContext;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetMapView implements IMapView
	{
		
		private var _model:IMapModel;
		
		private var _tileset:ITileset;
		
		private var _flags:IGrid;
		
		private var _buffer:IRenderContext;
		
		
		
		public function get area():Rectangle
		{
			return this.calculateArea();
		}
		
		
		
		public function TilesetMapView(model:IMapModel, tileset:ITileset, flags:IGrid, buffer:IRenderContext) 
		{
			this._model = model;
			
			this._tileset = tileset;
			
			this._flags = flags;
			
			this._buffer = buffer;
			
			this.invalidateAll();
		}
		
		
		
		private function calculateArea():Rectangle
		{
			var p:Point = this._model.displaySize;
			
			return GeometryUtil.getTransformedBoundingBox(new Rectangle(0, 0, p.x, p.y), this._model.transform);
		}
		
		
		

		public function invalidateAt(x:int, y:int):void
		{
			this._flags.setItem(x, y, true);
		}
		
		
		private function validateAt(x:int, y:int):void
		{
			this._flags.setItem(x, y, false);
		}
		
		
		
		public function invalidateAll():void
		{
			for (var y:int = 0; y < this._flags.rows; y++)
			{
				for (var x:int = 0; x < this._flags.columns; x++)
					this.invalidateAt(x, y);
			}
		}

		
		
		
		public function draw(renderContext:IRenderContext, transform:ITransform):void
		{
			//var t:ITransform = transform.append(this._model.transform);
			
			this.drawFlagged(this._flags, this._model.offset, this._buffer); 
		
			
			this._buffer.draw(renderContext, this.calculateSourceArea(), transform.append(this._model.transform));
			//this._buffer.draw(renderContext, this.area, transform.append(this._model.transform).append(new Transform(offset)));

			/*for (var y:int = 0; y < this._model.rows; y++)
			{
				for (var x:int = 0; x < this._model.columns; x++)
					this._tileset.draw(renderContext, transform.append(this.calculateTransform(x, y)), this._model.getIndex(x, y));
			}*/

		}
		
		
		
		private function calculateSourceArea():Rectangle
		{
			var o:Point = new Point(this._model.offset.x, this._model.offset.y);
			
			var s:Point = this._model.displaySize;	
			
			return new Rectangle(o.x, o.y, s.x, s.y);
		}
				
		
		
		/**
		 * Renders any updated tiles which intersect the viewing area
		 * 
		 * @param	flags
		 * @param	renderContext
		 * @param	transform
		 */
		private function drawFlagged(flags:IGrid, offset:Point, renderContext:IRenderContext):void
		{
			//var a:Rectangle = this.area;
			
			//var g:Rectangle = new Rectangle(0, 0, this._model.gridSize.x, this._model.gridSize.y);
			
			
			// calculate number of grid locations in the display area 
			// TODO: use dirty-bit flag to only recalculate these when one of the values change
			
			var gx:int = this._model.gridSize.x;
			
			var gy:int = this._model.gridSize.y;
			
			
			var dx:int = Math.floor(this._model.displaySize.x / gx);
			
			var dy:int = Math.floor(this._model.displaySize.y / gy);
			
			
			var ox:int = Math.floor(offset.x / gx);
			
			var oy:int = Math.floor(offset.y / gy);
			
		
			for (var y:int = -1; y < (dy + 1); y++)
			{
				for (var x:int = -1; x < (dx + 1); x++)
				{
					// calculate coordinates of tile being displayed at position x,y
					
					var tx:int = ox + x;
					
					var ty:int = oy + y;
					
					
					if (this.isCoordinateInBounds(tx, ty))
					{
						if (flags.getItem(tx, ty))
						{
							this._tileset.draw(renderContext, new Transform(new Point(tx * gx, ty * gy)), this._model.getIndex(tx, ty));
							this.validateAt(tx, ty);
						}					
					}
				}
			}
		}
		
		
		
		
		private function isCoordinateInBounds(x:int, y:int):Boolean
		{
			return ((x >= 0) && (x < this._model.columns) && (y >= 0) && (y < this._model.rows));
		}
		
		
			
			/*{
				var p:Point = flags[i];
				
				var t:ITransform = transform.append(this.calculateTransform(p.x, p.y))
				
				var b:Rectangle = GeometryUtil.getTransformedBoundingBox(g, t);
				
				if (a.intersects(b))
					this._tileset.draw(renderContext, t, this._model.getIndex(p.x, p.y));
				else
					untouched.push(p); // keep flagged tile for future renders
			}
			
			this._flags = untouched;
		}*/
		
		
		
		
		/*private function calculateTransform(p:Point):ITransform
		{
			var dx:Number = (p.x * this._model.gridSize.x) - this._model.offset.x;
			
			var dy:Number = (p.y * this._model.gridSize.y) - this._model.offset.y;
			
			return new Transform(new Point(dx, dy));
		}*/
		
		/*private function calculateTransform(x:int, y:int):ITransform
		{
			var px:Number = (x * this._model.gridSize.x) - this._model.offset.x;
			
			var py:Number = (y * this._model.gridSize.y) - this._model.offset.y;
			
			return new Transform(new Point(px, py));
		}
		*/


		
		
		
	}

}