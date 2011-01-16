package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IObservable 
	{
		
		function addObserver(observer:IObserver):void;
		
		function removeObserver(observer:IObserver):void;
		
	}
	
}