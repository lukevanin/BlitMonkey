package engine.graphics.commands 
{
	import engine.common.interfaces.ICommand;
	import engine.geometry.interfaces.ITransform;
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
		
		private var _transform:ITransform;
		
		
		
		public function DrawGraphicCommand(graphic:IGraphic, renderContext:IRenderContext, transform:ITransform) 
		{
			this._graphic = graphic;
			
			this._renderContext = renderContext;
			
			this._transform = transform;
		}
		
		
		
		public function execute():void 
		{
			this._graphic.draw(this._renderContext, this._transform);
		}
		
	}

}