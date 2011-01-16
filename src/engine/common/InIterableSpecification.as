package engine.common 
{
	import engine.common.interfaces.IIterable;
	import engine.common.interfaces.IIterator;
	import engine.common.interfaces.ISpecification;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class InIterableSpecification extends AbstractSpecification implements ISpecification
	{
		
		private var _iterable:IIterable;
		
		
		public function InIterableSpecification(iterable:IIterable) 
		{
			this._iterable = iterable;
		}
		
		
		public function isSatisfiedBy(candidate:*):Boolean 
		{
			var iterator:IIterator = this._iterable.getIterator();
			
			while (iterator.hasNext())
			{
				if (iterator.value == candidate)
					return true; // candidate is in collection
			}
			
			return false; // canidate is not in the collection;
		}
		
	}

}