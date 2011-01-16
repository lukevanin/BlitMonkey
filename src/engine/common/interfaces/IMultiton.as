package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IMultiton 
	{
		
		function getInstance(key:IMultitonKey):IMultiton;
		
	}
	
}