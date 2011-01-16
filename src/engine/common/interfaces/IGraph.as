package engine.common.interfaces 
{
	
	/**
	 * ...
	 * @author Luke Van In
	 */
	public interface IGraph implements ICollection
	{

		/**
		 * Returns true if a direct connection exists to the specified graph
		 * 
		 * @param	node
		 * @return
		 */
		function isConnectedTo(graph:IGraph):Boolean;
		
		/**
		 * Returns true if a direct or indirect connection exists to the specific graph
		 * 
		 * @param	graph
		 * @return
		 */
		function hasConnectionTo(graph:IGraph):Boolean;
		
		/**
		 * 
		 * @param	node
		 */
		function connect(node:IGraph):void;
		
		/**
		 * 
		 * @param	node
		 */
		function disconnect(node:IGraph):void;		
	}
	
}