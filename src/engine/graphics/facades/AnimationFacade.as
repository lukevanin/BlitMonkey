package engine.graphics.facades 
{
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationController;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationModel;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationFacade implements IAnimation
	{
		
		private var _model:IAnimationModel;
		
		private var _controller:IAnimationController;
		
		private var _view:IGraphicView;
		
		
		public function get isPlaying():Boolean
		{
			return this._model.isPlaying;
		}
		

		public function get currentFrame():int 
		{
			return this._model.currentFrame;
		}
		
		
		public function get numFrames():int 
		{
			return this._model.numFrames;
		}
		
		
		public function get framesPerSecond():int
		{
			return this._model.framesPerSecond;
		}
		
		
		public function get area():Rectangle
		{
			return this._view.area;
		}
		
		
		public function get transform():ITransform
		{
			return this._model.transform;
		}
		
		
		/*public function get position():Point
		{
			return this._model.position;
		}*/
		
		/*public function set position(position:Point):void
		{
			this._model.position = position;
		}*/
		
		
		public function AnimationFacade(model:IAnimationModel, view:IGraphicView, controller:IAnimationController) 
		{
			this._model = model;

			this._view = view; 
			
			this._controller = controller;
		}
		
		

		
		public function play():void
		{
			this._controller.play();
		}
		
		
		public function stop():void
		{
			this._controller.stop();
		}
		
		
		public function update(t:Number):void 
		{
			this._controller.update(t);
		}
			
		
		public function draw(renderContext:IRenderContext, transform:ITransform):void
		{
			this._view.draw(renderContext, transform);
		}
		


		
	}

}