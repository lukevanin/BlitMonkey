package engine.framework.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IObjectProvider 
	{
		
		function addObject(id:String, object:Object):void;
		
		function getObject(id:String):Object;
		
	}
	
}