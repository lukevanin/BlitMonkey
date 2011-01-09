package engine.framework.providers 
{
	import engine.collection.interfaces.IDictionary;
	import engine.collection.Dictionary;
	import engine.framework.interfaces.IObjectProvider;
	import engine.framework.interfaces.IObjectsProvider;

	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ObjectsProvider implements IObjectsProvider
	{
		
		private var _providers:IDictionary;
		
		
		public function ObjectsProvider() 
		{
			this._providers = new Dictionary();
		}
		
		
		public function addType(type:Class, provider:IObjectProvider):void 
		{
			this._providers.addItem(type, provider);
		}
		
		public function getObject(id:String, type:Class):Object 
		{
			return this.getProvider(type).getObject(id);
		}
		
		
		private function getProvider(type:Class):IObjectProvider
		{
			return this._providers.getItem(type) as IObjectProvider;
		}
		
	}

}