package engine.graphics.builders 
{
	import engine.graphics.controllers.CompositeGraphicController;
	import engine.graphics.facades.CompositeGraphicFacade;
	import engine.graphics.interfaces.ICompositeGraphic;
	import engine.graphics.interfaces.ICompositeGraphicBuilder;
	import engine.graphics.interfaces.IGraphic;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeGraphicBuilder implements ICompositeGraphicBuilder
	{
		
		public function CompositeGraphicBuilder() 
		{
			
		}
		
		
		
		public function buildGraphic(graphics:Vector.<IGraphic>):ICompositeGraphic
		{
			return new CompositeGraphicFacade(graphics, new CompositeGraphicController(graphics));
		}
		
	}

}