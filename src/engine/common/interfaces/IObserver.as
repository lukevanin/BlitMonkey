package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IObserver 
	{
		
		function notify(subject:IObservable):void;
		
	}
	
}