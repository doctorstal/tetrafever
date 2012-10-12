/**
 * @author alexeyst
 * @date 10/12/12
 */
package tetrafever.model
{
	import mvcimpl.MessageTreeMember;

	import tetrafever.model.board.BoardModel;
	import tetrafever.model.player.PlayerModel;

	public class GameModel extends MessageTreeMember
	{
		private var _board:BoardModel;
		private var _player:PlayerModel;

		public function GameModel()
		{
		}

		public function createChildren():void
		{
			_board = new BoardModel();
			addChild(_board);
			_player = new PlayerModel();
			addChild(_player)
		}
	}
}
