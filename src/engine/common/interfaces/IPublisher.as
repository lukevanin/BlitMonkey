package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IPublisher extends IVisitor
	{
		
		function subscribe(broker:IBroker):void;
		
	}
	
}