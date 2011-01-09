package engine.graphics.commands 
{
	import engine.common.interfaces.ICommand;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class DrawGraphicCommand implements ICommand 
	{
		
		private var _graphic:IGraphic;
		
		private var _renderContext:IRenderContext;
		
		private var _position:Point;
		
		
		
		public function DrawGraphicCommand(graphic:IGraphic, renderContext:IRenderContext, position:Point) 
		{
			this._graphic = graphic;
			
			this._renderContext = renderContext;
			
			this._position = position;
		}
		
		
		
		public function execute():void 
		{
			this._graphic.draw(this._renderContext, this._position);
		}
		
	}

}