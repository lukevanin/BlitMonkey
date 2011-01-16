package engine.common.interfaces 
{
	
	/**
	 * A timeline represents a entity which is not instantaneous, which will do work over a time span. 
	 * It may complete in a finite time, or it may be infinite (run until destruction).
	 * ...
	 * @author Luke Van In
	 //*/
	public interface ITimeline 
	{
		
		function update(t:Number):void;
		
	}
	
}