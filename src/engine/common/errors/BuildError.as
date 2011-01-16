package engine.common.errors 
{
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class BuildError extends Error 
	{
		
		public function BuildError(message:* = "", id:* = 0) 
		{
			super(message, id);
		}
		
	}

}