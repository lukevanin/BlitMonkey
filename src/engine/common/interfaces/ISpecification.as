package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ISpecification 
	{
		
		function isSatisfiedBy(candidate:*):Boolean;
		
		function and(specification:ISpecification):ISpecification;
		
		function or(specification:ISpecification):ISpecification;
		
		function not():ISpecification;
		
	}
	
}