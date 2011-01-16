package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface ILinkedList extends IStaticLinkedList
	{
		function get isFirst():Boolean;		
		
		function get isLast():Boolean;

		
		function get first():ILinkedList;
		
		function get last():ILinkedList;
		
		
		
		function get next():ILinkedList;
		
		function get previous():ILinkedList;		

		
		/**
		 * Insert specified list item into a list by setting the next and previous of this item.
		 * Implementation note: previous.insertLink(this, previous.previous) and next.insertLink(next.next, this) need to be called to keep existing list structure.
		 * 
		 * @param	list
		 */
		function insertLink(next:ILinkedList, previous:ILinkedList):void;
		
		
		
		/**
		 * Removes this list item from whatever list it forms part of.
		 * Implementation note: previous.insertLink(this, previous.previous) and next.insertLink(next.next, this) need to be called to keep existing list structure.
		 * 
		 */
		function removeLink():void;
	
		
	}
	
}