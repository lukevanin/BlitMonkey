package engine.config.models 
{
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.config.interfaces.ICellAnimationFrameConfig;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationFrameConfigModel implements ICellAnimationFrameConfig 
	{
		private var _cell:int;
		
		private var _frame:IAnimationFrameConfig;
		
		
		public function get cell():int 
		{
			return this._cell;
		}
		
		public function get duration():Number 
		{
			return this._frame.duration;
		}
		
		
		public function CellAnimationFrameConfigModel(cell:int, frame:IAnimationFrameConfig) 
		{
			this._cell = cell;
			
			this._frame = frame;
		}
		

		
	}

}