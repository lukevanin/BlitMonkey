package engine.config.enums 
{
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class XmlConfigEnum 
	{
		
		public static const NAMESPACE:Namespace = new Namespace("monkey", "https://lukevanin@github.com/lukevanin/BlitMonkey.git");
		
		public static const CONFIG:QName = new QName(NAMESPACE, "config");
		
		public static const LIBRARY:QName = new QName(NAMESPACE, "library");
		
		public static const CANVAS:QName = new QName(NAMESPACE, "canvas");
		
		public static const BITMAP:QName = new QName(NAMESPACE, "bitmap");
		
		public static const CELLS:QName = new QName(NAMESPACE, "cells");
		
		public static const CELL:QName = new QName(NAMESPACE, "cell");
		
		public static const ANIMATION:QName = new QName(NAMESPACE, "animation");
		
		public static const FRAME:QName = new QName(NAMESPACE, "frame");
		
	}

}