package engine.graphics.controllers 
{
	import flash.geom.Point;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IRenderContext;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class __CompositeGraphicController implements IGraphic 
	{
		
		private var _graphics:Vector.<IGraphic>;

		
		
		public function CompositeGraphicController(graphics:Vector.<IGraphic>) 
		{
			this._graphics = graphics;
		}
		
		

		public function draw(renderContext:IRenderContext):void 
		{
			this.drawGraphics(this._graphics, renderContext);
		}
		
		
		
		private function drawGraphics(graphics:Vector.<IGraphic>, renderContext:IRenderContext):void
		{
			for (var i:int = 0; i < graphics.length; i++)
				graphics[i].draw(renderContext);
		}
		
	}

}