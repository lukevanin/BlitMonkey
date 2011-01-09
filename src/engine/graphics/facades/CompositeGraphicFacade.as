package engine.graphics.facades 
{
	import flash.geom.Point;
	import engine.graphics.interfaces.ICompositeGraphic;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IRenderContext;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeGraphicFacade implements ICompositeGraphic 
	{
		private var _graphics:Vector.<IGraphic>;
		
		private var _controller:IGraphic;
		
		
		public function get numGraphics():int 
		{
			return this._graphics.length;
		}

		
		public function CompositeGraphicFacade(graphics:Vector.<IGraphic>, controller:IGraphic) 
		{
			this._graphics = graphics;
			
			this._controller = controller;
		}

		
		public function addGraphic(graphic:IGraphic):void 
		{
			this._graphics.push(graphic);
		}
		
		public function getGraphicAt(index:int):IGraphic 
		{
			return this._graphics[index];
		}
		
		public function removeGraphicAt(index:int):IGraphic 
		{
			return this._graphics.splice(index, 1)[0];
		}
		

		public function draw(renderContext:IRenderContext, position:Point):void 
		{
			this._controller.draw(renderContext, position);
		}
		
	}

}