package engine.config.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IFactoryTypeProvider 
	{
		
		//function get numTypes():int;
		
		function hasType(name:String):Boolean;
		
		function getType(name:String):IFactoryType;
		
	}
	
}