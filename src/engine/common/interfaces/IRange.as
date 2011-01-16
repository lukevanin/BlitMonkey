package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IRange 
	{
		
		function get min():Number;
		
		function set min(min:Number):void;
		
		
		function get max():Number;
		
		function set max(max:Number):void;
		
		
		function get delta():Number;
		
		
		function includes(i:Number):Boolean;
		
		
		function union(range:IRange):IRange;
		
	}
	
}