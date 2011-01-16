package engine.graphics.facades 
{
	import engine.common.interfaces.IGrid;
	import engine.graphics.interfaces.IGraphic;
	import engine.graphics.interfaces.IIndexableGraphic;
	import engine.graphics.interfaces.IMap;
	import engine.graphics.interfaces.IMapModel;
	import engine.graphics.interfaces.IRenderContext;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class MapFacade implements IMap
	{
		private var _model:IMapModel;
		
		private var _graphic:IGraphic;
		
		//private var _graphic:IIndexableGraphic;
		
		//private var _dimensions:Point;
		
		

		//public function get dimensions():Point
		//{
			//return this._dimensions;
		//}
		
		
		
		public function get offset():Point
		{
			return this._model.offset;
		}
		
		public function set offset(offset:Point):void
		{
			this._model.offset = offset;
		}
		
		
		
		public function MapFacade(model:IMapModel, graphic:IGraphic) 
		{
			//this._graphic = graphic;
			
			this._model = model;
			
			this._graphic = graphic;
			
			//this._dimensions = dimensions;
		}
		

		
		public function setItemAt(item:*, position:Point):void 
		{
			this._model.setItemAt(item, position);
		}
		
		public function getItemAt(position:Point):* 
		{
			return this._model.getItemAt(position);
		}
		
		
		
		public function draw(renderContext:IRenderContext, position:Point):void
		{
			this._view.draw(renderContext);
		}
		
		
		
	}

}