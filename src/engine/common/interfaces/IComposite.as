package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IComposite extends IIterable
	{

		function addChild(child:ILeaf):void;	
		
		function removeChild(child:ILeaf):void;
		
	}
	
}