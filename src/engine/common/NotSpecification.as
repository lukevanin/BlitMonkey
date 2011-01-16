package engine.common 
{
	import engine.common.interfaces.ISpecification;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class NotSpecification extends AbstractCompositeSpecification implements ISpecification 
	{
		
		private var _a:ISpecification;
		
		
		public function NotSpecification(a:ISpecification) 
		{
			this._a = a;
		}
		
		
		
		public function isSatisfiedBy(candidate:*):Boolean 
		{
			return !this._a.isSatisfiedBy(candidate);
		}
		
	}

}