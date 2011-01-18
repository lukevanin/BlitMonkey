package engine.graphics.views 
{
	import engine.common.interfaces.ICollection;
	import engine.common.interfaces.ITileset;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TilesetAnimationView implements IGraphicView
	{
		
		private var _model:IAnimationModel;
		
		private var _tileset:ITileset;
		
		
		
		public function get size():Point 
		{
			return this._tileset.getSize(this.getCurrentIndex());
		}
		
		
		
		public function TilesetAnimationView(model:IAnimationModel, tileset:ITileset) 
		{
			this._model = model;
			
			this._tileset = tileset;
		}
		


		
		public function draw(renderContext:IRenderContext):void 
		{
			this._tileset.draw(renderContext, this._model.transform, this.getCurrentIndex());
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