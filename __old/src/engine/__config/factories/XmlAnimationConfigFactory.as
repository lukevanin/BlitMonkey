package engine.config.factories 
{
	import engine.collection.interfaces.IDictionary;
	import engine.common.StringUtil;
	import engine.config.enums.AnimationTypeEnum;
	import engine.config.enums.XmlConfigEnum;
	import engine.config.interfaces.IAnimationConfig;
	import engine.config.interfaces.IAnimationFrameConfig;
	import engine.config.interfaces.ICellAnimationFrameConfig;
	import engine.config.interfaces.ICellsAnimationConfig;
	import engine.config.interfaces.IXmlConfigFactory;
	import engine.config.models.AnimationConfigModel;
	import engine.config.models.AnimationFrameConfigModel;
	import engine.config.models.CellAnimationFrameConfigModel;
	import engine.config.models.CellAnimationFrameModel;
	import engine.config.models.CellsAnimationConfigModel;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlAnimationConfigFactory implements IXmlConfigFactory 
	{
		
		public function XmlAnimationConfigFactory() 
		{
			
		}

		
		
		/*public function createConfig(xml:XML):Object 
		{
			var config:IDictionary = new IDictionary();
			
			for each (var animationXml:XML in xml.elements(XmlConfigEnum.ANIMATION))
				config.addItem(animationXml.@id.toString(), this.createAnimationConfig(animationXml));
				
			return config;
		}*/
		
		
		
		public function createConfig(xml:XML):Object 
		{
			return this.createAnimationConfig(xml);
		}
		
		
		
		
		private function createAnimationConfig(xml:XML):IAnimationConfig
		{
			var type:String = xml.@type.toString();
			
			switch (type)
			{
				case AnimationTypeEnum.CELLS:
					return this.createCellAnimationConfig(xml);
					
				default:
					throw new Error("Unknown animation type " + type);
			}
		}
		
		
		
		
		private function createCellAnimationConfig(xml:XML):ICellsAnimationConfig
		{
			var frames:Vector.<IAnimationFrameConfig> = new Vector.<IAnimationFrameConfig>();
			
			for each (var frameXml:XML in xml.elements(XmlConfigEnum.FRAME))
				frames.push(this.createCellAnimationFrameConfig(frameXml));
			
			return new CellsAnimationConfigModel(xml.@cells.toString(), new AnimationConfigModel(frames));
		}	
		
		
		
		private function createCellAnimationFrameConfig(xml:XML):ICellAnimationFrameConfig
		{
			return new CellAnimationFrameConfigModel(xml.@cell.toString(), this.createAnimationFrameConfig(xml));
		}
		
		
		
		private function createAnimationFrameConfig(xml:XML):IAnimationFrameConfig
		{
			return new AnimationFrameConfigModel(this.parseTime(xml.@duration.toString()));
		}
		
		
		
		private function parseTime(s:String, delimiter:String = "/"):Number
		{
			if (s.indexOf(delimiter) == -1)
			{
				// decimal form, eg: 0.25
				return StringUtil.stringToNumber(s);
			}
			else
			{
				// fractional form, eg: 1/15 form
				var parts:Array = s.split(delimiter);
				
				var a:Number = StringUtil.stringToNumber(parts[0]);
				
				var b:Number = StringUtil.stringToNumber(parts[1]);
				
				return a / b;
			}
		}
		
	}

}