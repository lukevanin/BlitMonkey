package engine.graphics.facades 
{
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class IndexableGraphicAnimationFrameFacade implements IAnimationFrame
	{
		
		//private var _frame:IAnimationFrame;
		
		private var _graphic:IIndexableGraphic;
		
		private var _index:int;
		
		
		/*public function get duration():int 
		{
			return this._frame.duration;
		}*/
		
		
		public function get dimensions():Point
		{
			return this._graphic.dimensions;
		}
		
		
		//public function IndexableGraphicAnimationFrameFacade(graphic:IIndexableGraphic, frame:IAnimationFrame, index:int) 
		public function IndexableGraphicAnimationFrameFacade(graphic:IIndexableGraphic, index:int) 
		{
			//this._frame = frame;
			
			this._graphic = graphic;
			
			this._index = index;
		}
		

		
		public function draw(renderContext:IRenderContext, position:Point):void
		{
			this._graphic.index = this._index;
			
			this._graphic.draw(renderContext, position);
		}
		


		
		
	}

}