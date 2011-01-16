package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IVisitor 
	{
		
		function visit(context:IVisitable):void;
		
	}
	
}