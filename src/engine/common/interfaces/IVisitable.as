package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IVisitable 
	{
		
		
		function acceptVisitor(visitor:IVisitor):void;
		
	}
	
}