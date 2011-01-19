package engine.graphics.models 
{
	import engine.geometry.interfaces.ITransform;
	import engine.graphics.interfaces.ICompositeGraphicModel;
	import engine.graphics.interfaces.IGraphic;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class CompositeGraphicModel implements ICompositeGraphicModel 
	{
		
		private var _transform:ITransform;
		
		private var _graphics:Vector.<IGraphic>;
	
		
		
		public function get transform():ITransform
		{
			return this._transform;
		}
		
		
		public function get numGraphics():int 
		{
			return this._graphics.length;
		}
	
		
		
		public function CompositeGraphicModel(graphics:Vector.<IGraphic>, transform:ITransform) 
		{
			this._graphics = graphics;
			
			this._transform = transform;
		}
		
		
		public function addGraphic(graphic:IGraphic):void 
		{
			this._graphics.push(graphic);
		}
		
		public function getGraphicAt(index:int):IGraphic 
		{
			return this._graphics[index];
		}
		
		public function removeGraphicAt(index:int):IGraphic 
		{
			return this._graphics.splice(index, 1)[0];
		}		
		
	}

}