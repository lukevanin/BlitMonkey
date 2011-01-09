package engine.graphics.factories 
{
	import engine.collection.interfaces.IIterator;
	import engine.framework.interfaces.IConfig;
	import engine.framework.interfaces.IObjectFactory;
	import engine.framework.interfaces.IObjectProvider;
	import engine.graphics.interfaces.IAnimation;
	import engine.graphics.interfaces.IAnimationBuilder;
	import engine.graphics.interfaces.IAnimationFrame;
	import engine.graphics.interfaces.ICellAnimationBuilder;
	import engine.graphics.interfaces.ICells;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CellAnimationFactory implements IObjectFactory
	{
		
		//private var _config:IConfig;
		
		private var _frameFactory:IObjectFactory;
		
		private var _animationBuilder:IAnimationBuilder;
		
		private var _cells:IObjectProvider;
		
		private var _builder:ICellAnimationBuilder;
		
		
		//public function CellAnimationFactory(config:IConfig, frameFactory:IObjectFactory, animationBuilder:IAnimationBuilder, cells:IObjectProvider, builder:ICellAnimationBuilder) 
		public function CellAnimationFactory(frameFactory:IObjectFactory, animationBuilder:IAnimationBuilder, cells:IObjectProvider, builder:ICellAnimationBuilder) 
		{
			//this._config = config;
			
			this._frameFactory = frameFactory;
			
			this._animationBuilder = animationBuilder;
			
			this._cells = cells;
			
			this._builder = builder;
		}
		
		
		
		
		public function createObject(config:IConfig):Object 
		{
			//var config:IConfig = this._config.getConfig(id);
			
			var cells:String = config.getProperty("cells");
			
			
			var iterator:IIterator = config.getConfigIterator();
			
			var frames:Vector.<IAnimationFrame> = new Vector.<IAnimationFrame>();
			
			while (iterator.hasNext)
			{
				frames.push(this._frameFactory.createObject(iterator.value as IConfig));
				
				iterator.next();
			}
			

			return this._builder.buildAnimation(this._animationBuilder.buildAnimation(frames), this._cells.getObject(cells) as ICells);
		}
		
	}

}