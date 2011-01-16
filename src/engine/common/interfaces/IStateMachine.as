package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IStateMachine extends IState
	{
		
		function get currentState():IState;
		
		
		function setState(state:IState):void;
				
	}
	
}