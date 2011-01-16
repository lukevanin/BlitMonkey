package engine.graphics.views 
{
	import engine.common.interfaces.ICollection;
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
	public class AnimationView implements IGraphicView
	{
		
		private var _model:IAnimationModel;
		
		
		
		public function get size():Point 
		{
			return this.getCurrentFrame().size;
		}
		
		
		
		public function AnimationView(model:IAnimationModel) 
		{
			this._model = model;
		}
		


		
		public function draw(renderContext:IRenderContext):void 
		{
			this.getCurrentFrame().draw(renderContext);
		}

		
			
		private function getCurrentFrame():IGraphicView
		{
			return (this._model.getItemAt(this._model.currentFrame) as IGraphic);
		}
		
	}

}