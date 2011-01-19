package engine.graphics.builders 
{
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.Transform;
	import engine.graphics.facades.CompositeGraphicFacade;
	import engine.graphics.interfaces.ICompositeGraphic;
	import engine.graphics.interfaces.ICompositeGraphicBuilder;
	import engine.graphics.interfaces.ICompositeGraphicModel;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IGraphicView;
	import engine.graphics.models.CompositeGraphicModel;
	import engine.graphics.views.CompositeGraphicView;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeGraphicBuilder
	{
		
		public function CompositeGraphicBuilder() 
		{
			
		}
		
		
		
		public function buildGraphic(graphics:Vector.<IGraphic> = null, transform:ITransform = null):ICompositeGraphic
		{
			if (graphics == null)
				graphics = new Vector.<IGraphic>();
				
			if (transform == null)
				transform = new Transform();
				
			var model:ICompositeGraphicModel = new CompositeGraphicModel(graphics, transform);
			
			var view:IGraphicView = new CompositeGraphicView(model);
			
			return new CompositeGraphicFacade(model, view);
		}
		
	}

}