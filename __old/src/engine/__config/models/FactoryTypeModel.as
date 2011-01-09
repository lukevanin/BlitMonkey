package engine.config.models 
{
	import engine.config.interfaces.IFactoryType;
	import engine.config.interfaces.IXmlConfigFactory;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class FactoryTypeModel implements IFactoryType 
	{
		
		private var _type:Class;
		
		private var _factory:IXmlConfigFactory;
		
		
		
		public function get type():Class 
		{
			return this._type;
		}
		
		public function get factory():IXmlConfigFactory 
		{
			return this._factory;
		}
		
		
		public function FactoryTypeModel(type:Class, factory:IXmlConfigFactory) 
		{
			this._type = type;
			
			this._factory = factory;
		}
		


		
	}

}