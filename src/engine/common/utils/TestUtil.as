package engine.common.utils 
{
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TestUtil 
	{
		
		public function TestUtil() 
		{
			
		}
		
		
		
		public static function assert(message:*, condition:Boolean):void
		{
			if (!condition)
				throw new Error(message);
		}
		
	}

}