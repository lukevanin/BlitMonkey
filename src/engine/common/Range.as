package engine.common 
{
	import engine.common.interfaces.IRange;
	
	/**
	 * TODO: optimise: calculate min and max on read (once only using dirty flag)
	 * ...
	 * @author Luke Van In
	 */
	public class Range implements IRange 
	{
		
		private var _min:Number;
		
		private var _max:Number;
		
		
		public function get min():Number
		{
			return Math.min(this._min, this._max);
		}
		
		public function set min(min:Number):void
		{
			this._min = min;
		}
		
		
		public function get max():Number
		{
			return Math.max(this._min, this._max);
		}
		
		public function set max(max:Number):void
		{
			this._max = max;
		}
		
		
		public function get delta():Number
		{
			return this.max - this.min;
		}
		
		
		public function Range(min:Number, max:Number) 
		{
			this._min = min;
			
			this._max = max;
		}
		
		
		
		public function includes(i:Number):Boolean
		{
			return ((i >= this.min) && (i <= this._max));
		}
		
		
		
		public function union(range:IRange):IRange
		{
			return new Range(Math.min(this.min, range.min), Math.max(this.max, range.max));
		}
		
	}

}