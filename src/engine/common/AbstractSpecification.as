package engine.common 
{
	import engine.common.interfaces.ISpecification;
	import flash.errors.IllegalOperationError;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AbstractSpecification 
	{
		
		public function AbstractSpecification() 
		{
			
		}
		
		
		
		/*public function isSatisfiedBy(specification:ISpecification):Boolean
		{
			throw new IllegalOperationError("Not implemented");
		}*/
		
		
		public function and(specification:ISpecification):ISpecification 
		{
			return new AndSpecification(this, specification);
		}
		
		public function or(specification:ISpecification):ISpecification 
		{
			return new OrSpecification(this, specification);
		}
		
		public function not():ISpecification 
		{
			return new NotSpecification(specification);
		}
		
	}

}