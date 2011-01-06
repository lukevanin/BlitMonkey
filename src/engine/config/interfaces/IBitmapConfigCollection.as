package engine.config.interfaces 
{
	import engine.collection.interfaces.IIterator;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IBitmapConfigCollection
	{
		
		function getBitmap(id:String):IBitmapConfig;
		
	}
	
}