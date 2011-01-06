package engine.config.models 
{
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IConfigFactory;
	import engine.config.interfaces.IAnimationFrameConfig;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationConfigModel implements IAnimationConfig
	{
		
		private var _cells:String;
		
		private var _frames:Vector.<IAnimationFrameConfig>;
		
		
		
		public function get cells():String
		{
			return this._cells;
		}
		
		
		
		public function get numFrames():int
		{
			return this._frames.length;
		}
		
		
		public function AnimationConfigModel() 
		{
			
		}
		
		
		
		public function getFrameAt(index:int):IAnimationFrameConfig
		{
			return this._frames[index];
		}
		
		
		
		/**
		 * Example XML:
		 * 		<animation id="..." cells="...">
		 * 			<frame />
		 * 			...
		 * 		</animation>
		 * 
		 * @param	xml
		 */
		public function parseXml(xml:XML, factory:IConfigFactory):void
		{
			this._cells = xml.@cells.toString();
			
			this.parseFrameXml(xml, factory);
		}
		
		
		
		private function parseFrameXml(xml:XML, factory:IConfigFactory):void
		{
			this._frames = new Vector.<IAnimationFrameConfig>;
			
			for each (var frameXml:XML in xml.frame)
				this._frames.push(factory.createAnimationFrameConfig(frameXml));
		}
		
		
		
		public static function create(xml:XML, factory:IConfigFactory):AnimationConfigModel
		{
			var config:AnimationConfigModel = new AnimationConfigModel();
			
			config.parseXml(xml, factory);
			
			return config;
		}
		
	}

}