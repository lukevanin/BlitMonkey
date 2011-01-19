package engine.geometry.commands 
{
	import engine.common.interfaces.ICommand;
	import engine.geometry.interfaces.ITransform;
	import engine.geometry.interfaces.ITransformable;
	import engine.geometry.Transform;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class TranslateCommand implements ICommand 
	{
		
		private var _transform:ITransform;
		
		private var _distance:Point;
		
		
		
		public function TranslateCommand(transform:ITransform, distance:Point) 
		{
			this._transform = transform;
			
			this._distance = distance;
		}
		
		
		
		public function execute():void 
		{
			this._transform.translate(this._distance);
		}
		
	}

}