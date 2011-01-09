package engine.graphics.factories 
{
	import engine.common.StringUtil;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICellAnimationFrameBuilder;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationFrameFactory implements IObjectFactory 
	{
		
		private var _builder:ICellAnimationFrameBuilder;
		
		private var _frameFactory:IObjectFactory;
		
		
		public function CellAnimationFrameFactory(builder:ICellAnimationFrameBuilder, frameFactory:IObjectFactory) 
		{
			this._builder = builder;
			
			this._frameFactory = frameFactory;
		}
		

		public function createObject(config:IConfig):Object 
		{
			var cell:int = StringUtil.stringToInt(config.getProperty("cell"));
			
			return this._builder.buildFrame(cell, this._frameFactory.createObject(config) as IAnimationFrame)
		}
		
	}

}