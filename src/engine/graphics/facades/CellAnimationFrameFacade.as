package engine.graphics.facades 
{
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICellAnimationFrame;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationFrameFacade implements ICellAnimationFrame
	{
		
		private var _cell:int;
		
		private var _frame:IAnimationFrame;
		
		
		public function get cell():int 
		{
			return this._cell;
		}
		
		public function get duration():Number 
		{
			return this._frame.duration;
		}
		
		
		public function CellAnimationFrameFacade(cell:int, frame:IAnimationFrame) 
		{
			this._cell = cell;
			
			this._frame = frame;
		}


		
	}

}