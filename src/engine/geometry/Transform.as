package engine.geometry 
{
	import engine.common.interfaces.ICloneable;
	import engine.geometry.interfaces.ITransform;
	import flash.geom.Point;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class Transform implements ITransform
	{
		
		private var _position:Point;

		
		public function get position():Point 
		{
			return this._position.clone();
		}
		
		public function set position(position:Point):void 
		{
			this._position.x = position.x;
			
			this._position.y = position.y;
		}
		
		
		public function Transform(position:Point = null) 
		{
			if (position == null)
				this._position = new Point();
			else
				this._position = position.clone();
		}
		

		
		public function clone():ITransform 
		{
			return new Transform(this.position);
		}
		
	}

}