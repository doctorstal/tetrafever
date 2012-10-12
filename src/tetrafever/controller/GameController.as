/**
 * @author alexeyst
 * @date 10/12/12
 */
package tetrafever.controller
{
	import flash.display.DisplayObjectContainer;

	import tetrafever.model.GameModel;

	public class GameController
	{
		private var _host:DisplayObjectContainer;
		private var _model:GameModel;
		private var _view:GameView;
		public function GameController(host:DisplayObjectContainer)
		{
			_host = host;
			_model = new GameModel();
			_view = new GameView(_host, _model);
		}

		public function initLogic():void
		{
			_model.createChildren();
		}

	}
}
