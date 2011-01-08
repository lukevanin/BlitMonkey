package engine.graphics.factories 
{
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.config.interfaces.ICellAnimationFrame;
	import engine.config.interfaces.ICellAnimationFrameConfig;
	import engine.config.models.CellAnimationFrameModel;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.IAnimationFrameFactory;
	import engine.graphics.interfaces.ICell;
	import engine.graphics.models.AnimationFrameModel;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationFrameFactory implements IAnimationFrameFactory 
	{
		
		public function AnimationFrameFactory() 
		{
			
		}
		

		public function createAnimationFrame(config:IAnimationFrameConfig):IAnimationFrame 
		{
			if (config is ICellAnimationFrameConfig)
				return this.createCellAnimationFrame(config as ICellAnimationFrameConfig);
			else
				throw new Error("Unsupported frame type " + config);
				
			//return new AnimationFrameModel(config.duration, config.cell);
		}
		
		
		
		
		private function createCellAnimationFrame(config:ICellAnimationFrameConfig):ICellAnimationFrame
		{
			return new CellAnimationFrameModel(config.cell, new AnimationFrameModel(config.duration))
		}
		
		
		/*public static function create():AnimationFrameFactory
		{
			return new AnimationFrameFactory();
		}*/
		
	}

}