package engine.graphics.models 
{
	import engine.graphics.interfaces.IGraphicModel;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GraphicModel implements IGraphicModel
	{
		
		private var _position:Point;
		
		
		public function get position():Point 
		{
			return this._position.clone();
		}
		
		public function set position(position:Point):void 
		{
			this._position = position.clone();
		}
		
		
		public function GraphicModel(position:Point) 
		{
			this._position = position.clone();
		}
		


		
	}

}