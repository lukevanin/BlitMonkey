package engine.graphics.builders 
{
	import engine.framework.interfaces.IObjectFactory;
	import engine.framework.interfaces.IObjectProvider;
	import engine.graphics.facades.CellAnimationFacade;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationBuilder;
	import engine.graphics.interfaces.ICellAnimationBuilder;
	import engine.graphics.interfaces.ICells;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationBuilder implements ICellAnimationBuilder
	{
		
		public function CellAnimationBuilder() 
		{
		}
		
		
		
		public function buildAnimation(animation:IAnimation, cells:ICells):IAnimation 
		{
			return new CellAnimationFacade(animation, cells);
		}
		
	}

}