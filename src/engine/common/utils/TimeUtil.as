package engine.common.utils 
{
	import flash.utils.getTimer;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TimeUtil 
	{
		
		public function TimeUtil() 
		{
			
		}
		
		
		
		public static function getSeconds():Number
		{
			return getTimer() / 1000;
		}
		
	}

}