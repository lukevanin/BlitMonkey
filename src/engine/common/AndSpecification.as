package engine.common 
{
	import engine.common.interfaces.ISpecification;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class AndSpecification extends AbstractCompositeSpecification implements ISpecification 
	{
		
		private var _a:ISpecification;
		
		private var _b:ISpecification;
		
		
		public function AndSpecification(a:ISpecification, b:ISpecification) 
		{
			this._a = a;
			
			this._b = b;
		}
		
		
		public function isSatisfiedBy(candidate:*):Boolean 
		{
			return (this._a.isSatisfiedBy(candidate) && this._b.isSatisfiedBy(candidate));
		}
		
		
	}

}