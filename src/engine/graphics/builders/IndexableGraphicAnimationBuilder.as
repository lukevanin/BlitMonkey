package engine.graphics.builders 
{
	import engine.common.interfaces.ICollection;
	import engine.graphics.facades.IndexableGraphicAnimationFacade;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IGraphicAnimation;
	import engine.graphics.interfaces.IIndexableGraphic;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class IndexableGraphicAnimationBuilder 
	{
		
		private var _graphic:IIndexableGraphic;
		
		
		public function IndexableGraphicAnimationBuilder(graphic:IIndexableGraphic) 
		{
			
		}
		
		
		
		public function buildAnimation(indexes:ICollection, framesPerSecond:int, currentFrame:int = 0, isPlaying:Boolean = false):IAnimation
		{
			return new AnimationBuilder().buildAnimation(frames, framesPer
			//return new IndexableGraphicAnimationFacade(animation, indexableGraphic);
		}
		
	}

}