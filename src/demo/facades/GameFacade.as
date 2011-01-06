package demo.facades 
{
	import demo.interfaces.IGameController;
	import engine.framework.interfaces.IGame;
	/**
	 * ...
	 * @author Luke Van In
	 */
	public class GameFacade implements IGame
	{
		
		private var _gameController:IGameController;
		
		
		
		public function GameFacade(gameController:IGameController) 
		{
			this._gameController = gameController;
		}
		
	}

}