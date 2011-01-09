package engine.config.models 
{
	import engine.config.enums.XmlConfigEnum;
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.graphics.interfaces.IAnimationFrame;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationConfigModel implements IAnimationConfig
	{
		
		//private var _cells:String;
		
		private var _frames:Vector.<IAnimationFrameConfig>;
		
		
		

		
		
		
		public function get numFrames():int
		{
			return this._frames.length;
		}
		
		
		public function AnimationConfigModel(frames:Vector.<IAnimationFrameConfig>) 
		{
			this._frames = frames;
		}
		
		
		
		/*public function addFrame(frame:IAnimationFrameConfig):void
		{
			this._frames.push(frame);
		}*/
		
		
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
		/*public function parseXml(xml:XML, factory:IXmlConfigFactory):void
		{
			this._cells = xml.@cells.toString();
			
			this.parseFrameXml(xml, factory);
		}*/
		
		
		
		/*private function parseFrameXml(xml:XML, factory:IXmlConfigFactory):void
		{
			this._frames = new Vector.<IAnimationFrameConfig>;
			

		}
		*/
		
		
		/*public static function create(xml:XML, factory:IXmlConfigFactory):AnimationConfigModel
		{
			var config:AnimationConfigModel = new AnimationConfigModel();
			
			config.parseXml(xml, factory);
			
			return config;
		}
		*/
	}

}