package engine.graphics.controllers 
{
	import engine.graphics.interfaces.IMapController;
	import engine.graphics.interfaces.IMapModel;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class MapController implements IMapController
	{
		
		private var _model:IMapModel;
		
		
		public function MapController(model:IMapModel) 
		{
			this._model = model;
		}
		

		public function offsetBy(p:Point):void 
		{
			this._model.offset = this._model.offset.add(p);
		}
		
		
		public function offsetTo(p:Point):void 
		{
			this._model.offset = p;
		}
		
	}

}