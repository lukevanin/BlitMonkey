package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IChainOfResponsibility 
	{
		
		function addNext(chain:IChainOfResponsibility):void;
		
		
		function process():void;
		
	}
	
}