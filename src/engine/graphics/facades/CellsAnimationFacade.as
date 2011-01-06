package engine.graphics.facades 
{
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.IDrawableAnimation;
	import engine.graphics.interfaces.IRenderer;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsAnimationFacade implements IDrawableAnimation 
	{
		
		private var _animation:IAnimation;
		
		private var _cells:ICells;
		
		private var _renderer:IRenderer;
		
		
		public function get currentFrame():int 
		{
			return this._animation.currentFrame;
		}
		
		public function get numFrames():int 
		{
			return this._animation.numFrames;
		}
		
		
		public function CellsAnimationFacade(animation:IAnimation, cells:ICells, renderer:IRenderer) 
		{
			this._animation = animation;
			
			this._cells = cells;
			
			this._renderer = renderer;
		}

		

		
		public function update(time:Number):void 
		{
			this._animation.update;
		}
		
		
		
		public function drawAt(position:Point):void
		{
			var cell:ICell = this._cells.getCellAt(this._animation.currentCell);
			
			this._renderer.blit(this._cells.bitmap, cell.area, position.subtract(cell.offset));
		}
		
		
	}

}