package engine.framework.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IObjectsProvider 
	{
		
		function addType(type:Class, provider:IObjectProvider):void;
		
		function getObject(id:String, type:Class):Object;
		
	}
	
}