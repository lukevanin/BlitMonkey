package engine.config.models 
{
	import engine.config.interfaces.ICellAnimationFrame;
	import engine.config.interfaces.ICellAnimationFrameConfig;
	import engine.graphics.interfaces.IAnimationFrame;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationFrameModel implements ICellAnimationFrame
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
		
		
		
		public function CellAnimationFrameModel(cell:int, frame:IAnimationFrame) 
		{
			this._cell = cell;
			
			this._frame = frame;
		}
		

		
	}

}