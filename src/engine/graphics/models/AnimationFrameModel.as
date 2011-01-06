package engine.graphics.models 
{
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICell;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationFrameModel implements IAnimationFrame 
	{

		private var _duration:Number;
		
		private var _cell:int;
		
		
		
		
		public function get duration():Number 
		{
			return this._duration;
		}
		
		
		
		public function get cell():int
		{
			return this._cell;
		}
		
		
		
		
		public function AnimationFrameModel(duration:Number, cell:int) 
		{
			this._duration = duration;
			
			this._cell = cell;
		}
		

		
		
	}

}