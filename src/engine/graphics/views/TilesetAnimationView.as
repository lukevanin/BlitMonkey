package engine.graphics.views 
{
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.ITileset;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.geometry.utils.GeometryUtil;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetAnimationView implements IGraphicView
	{
		
		private var _model:IAnimationModel;
		
		private var _tileset:ITileset;
		
		
		
		public function get area():Rectangle 
		{
			return this.calculateArea();
		}
		
		
		
		public function TilesetAnimationView(model:IAnimationModel, tileset:ITileset) 
		{
			this._model = model;
			
			this._tileset = tileset;
		}
		

		
		private function calculateArea():Rectangle
		{
			var p:Point = this._tileset.getSize(this.getCurrentIndex())
			
			var r:Rectangle = new Rectangle(0, 0, p.x, p.y);
			
			return GeometryUtil.getTransformedBoundingBox(r, this._model.transform)			
		}


		
		public function draw(renderContext:IRenderContext, transform:ITransform):void 
		{
			this._tileset.draw(renderContext, transform.append(this._model.transform), this.getCurrentIndex());
		}

		
		
		private function getCurrentIndex():int
		{
			return this._model.getFrame(this._model.currentFrame);
		}
		
			
		/*private function getCurrentFrame():IGraphicView
		{
			return (this._model.getItemAt(this._model.currentFrame) as IGraphic);
		}*/
		
	}

}