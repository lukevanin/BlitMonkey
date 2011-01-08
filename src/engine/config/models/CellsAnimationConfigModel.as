package engine.config.models 
{
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.config.interfaces.ICellsAnimationConfig;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellsAnimationConfigModel implements ICellsAnimationConfig 
	{
		
		private var _cells:String;
		
		private var _animation:IAnimationConfig;
		
		
		public function get cells():String
		{
			return this._cells;
		}
		
		
		public function get numFrames():int 
		{
			return this._animation.numFrames;
		}
		
		
		
		public function CellsAnimationConfigModel(cells:String, animation:IAnimationConfig) 
		{
			this._cells = cells;
			
			this._animation = animation;
		}
		


		
		/*public function addFrame(frame:IAnimationFrameConfig):void 
		{
			this._animation.addFrame(frame);
		}*/
		
		
		public function getFrameAt(index:int):IAnimationFrameConfig 
		{
			return this._animation.getFrameAt(index);
		}
		
	}

}