package engine.graphics.builders 
{
	import engine.graphics.facades.CellAnimationFrameFacade;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICellAnimationFrameBuilder;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationFrameBuilder implements ICellAnimationFrameBuilder 
	{
		
		public function CellAnimationFrameBuilder() 
		{
			
		}
		

		public function buildFrame(cell:int, frame:IAnimationFrame):IAnimationFrame 
		{
			return new CellAnimationFrameFacade(cell, frame);
		}
		
	}

}