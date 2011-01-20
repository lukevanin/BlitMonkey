package engine.graphics.interfaces 
{
	import engine.geometry.interfaces.ITransform;
	import flash.display.BitmapData;
	import flash.display.PixelSnapping;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ICanvas
	{
		
	
		function get x():Number;
		
		function set x(x:Number):void;
		
		
		function get y():Number;
		
		function set y(y:Number):void;
		
		
		function get width():Number;
		
		function get height():Number;
		
		
		function get area():Rectangle;
		
		
		function get isTransparent():Boolean;
		
		function get backgroundColour():uint;
		
		
		function get bitmapData():BitmapData;
		
		
		function get pixelSnapping():String;
		
		function set pixelSnapping(pixelSnapping:String):void;
		
		
		function get smoothing():Boolean;
		
		function set smoothing(smoothing:Boolean):void;
		
		
		
		
		//function blit(bitmapData:BitmapData, sourceArea:Rectangle, transform:ITransform):void
		
		
		function clear():void;
		
	}
	
}