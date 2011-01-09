package engine.graphics.facades 
{
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.interfaces.ICellAnimationFrame;
	import engine.graphics.interfaces.ICells;
	import engine.graphics.interfaces.IDrawable;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationFacade implements IAnimation, IDrawable 
	{
		
		private var _animation:IAnimation;
		
		private var _cells:ICells;

		
		
		public function get currentFrame():int 
		{
			return this._animation.currentFrame;
		}
		
		public function get numFrames():int 
		{
			return this._animation.numFrames;
		}
		
		
		public function CellAnimationFacade(animation:IAnimation, cells:ICells) 
		{
			this._animation = animation;
			
			this._cells = cells;
		}

		

		public function getFrameAt(index:int):IAnimationFrame 
		{
			return this._animation.getFrameAt(index);
		}
		

		
		public function update(time:Number):void 
		{
			this._animation.update(time);
		}
		
		
		
		public function draw(renderContext:IRenderContext, position:Point):void
		{
			var frame:ICellAnimationFrame = this._animation.getFrameAt(this._animation.currentFrame) as ICellAnimationFrame;
			
			var cell:ICell = this._cells.getCellAt(frame.cell);
			
			renderContext.blit(this._cells.bitmap, cell.area, position.subtract(cell.offset));
		}
		
		
		
	}

}