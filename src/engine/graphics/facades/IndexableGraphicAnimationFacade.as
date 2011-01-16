package engine.graphics.facades 
{
	import engine.graphics.interfaces.IGraphicAnimation;
	import flash.geom.Point;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IRenderContext;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class IndexableGraphicAnimationFacade implements IGraphicAnimation
	{
		
		private var _animation:IAnimation;
		
		private var _indexableGraphic:IIndexableGraphic;
		
		
		public function get isPlaying():Boolean
		{
			return this._animation.isPlaying;
		}
		
		
		public function get currentFrame():int 
		{
			return this._animation.currentFrame;
		}
		
		
		public function get numFrames():int 
		{
			return this._animation.numFrames;
		}
		
		
		public function get framerate():int
		{
			return this._animation.framerate;
		}

		
		public function IndexableGraphicAnimationFacade(animation:IAnimation, indexableGraphic:IIndexableGraphic) 
		{
			this._animation = animation;
			
			this._indexableGraphic = indexableGraphic;
		}
		
		
		
		public function play():void
		{
			this._animation.play();
		}
		
		
		
		public function stop():void
		{
			this._animation.stop();
		}
		
		

		
		public function draw(renderContext:IRenderContext, position:Point):void 
		{
			this._indexableGraphic.draw(renderContext, position);
		}

		

		
	}

}