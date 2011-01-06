package engine.framework.adapters 
{
	import engine.framework.interfaces.IGameLibrary;
	import flash.display.MovieClip;
	import flash.system.ApplicationDomain;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class ApplicationDomainGameLibraryAdapter implements IGameLibrary 
	{
		
		private var _applicationDomain:ApplicationDomain;
		
		
		
		public function ApplicationDomainGameLibraryAdapter(applicationDomain:ApplicationDomain) 
		{
			this._applicationDomain = applicationDomain;
		}
		
		
		
		public function hasClass(id:String):Boolean
		{
			return this._applicationDomain.hasDefinition(id);
		}
		
		
		
		public function getClass(id:String):Class 
		{
			return this._applicationDomain.getDefinition(id) as Class;
		}
		
	}

}