package engine.config.models 
{
	import engine.common.StringUtil;
	import engine.config.interfaces.IAnimationFrameConfig;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AnimationFrameConfigModel implements IAnimationFrameConfig
	{
		
		private var _duration:Number;
		
		//private var _cell:int;
		

		public function get duration():Number 
		{
			return this._duration;
		}
		
		/*public function get cell():int 
		{
			return this._cell;
		}*/
		
		
		public function AnimationFrameConfigModel(duration:Number) 
		{
			this._duration = duration;
		}
		
		
		
		/**
		 * Example XML:
		 * 		<frame duration="1/7" cell="0" />
		 * 
		 * alternative:
		 * 		<frame duration="0.25" cell="0" />
		 * 
		 * @param	xml
		 */
		/*public function parseXml(xml:XML):void
		{
			this._duration = this.parseTime(xml.@duration.toString());
			
			this._cell = parseInt(xml.@cell.toString());
		}*/
		
		
		
		/*private function parseTime(s:String, delimiter:String = "/"):Number
		{
			if (s.indexOf(delimiter) == -1)
			{
				// 0.25
				return StringUtil.stringToNumber(s);
			}
			else
			{
				// 1/15 form
				var parts:Array = s.split(delimiter);
				
				var a:Number = StringUtil.stringToNumber(parts[0]);
				
				var b:Number = StringUtil.stringToNumber(parts[1]);
				
				return a / b;
			}
		}*/
		
		
		
		/*public static function create(xml:XML):AnimationFrameConfigModel
		{
			var config:AnimationFrameConfigModel = new AnimationFrameConfigModel();
			
			config.parseXml(xml);
			
			return config;
		}*/
		
		
		
		
		

		
	}

}