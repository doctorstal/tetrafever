/**
 * @author alexeyst
 * @date 10/12/12
 */
package tetrafever.controller
{
	import flash.display.DisplayObjectContainer;

	import mvcimpl.controller.MainController;
	import mvcimpl.model.ModelTreeMember;
	import mvcimpl.view.ViewTreeMember;

	import tetrafever.model.GameModel;
	import tetrafever.view.GameView;

	public class GameController extends MainController
	{

		public function GameController(host:DisplayObjectContainer)
		{
			super(host);

		}


		override protected function createView(model:ModelTreeMember):ViewTreeMember
		{
			return new GameView(_host, model);
		}

		override protected function createModel():ModelTreeMember
		{
			return new GameModel();
		}
	}
}
