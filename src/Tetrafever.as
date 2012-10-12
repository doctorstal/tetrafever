package {

import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;

	import tetrafever.controller.GameController;

	public class Tetrafever extends Sprite {
		private var _gameController:GameController;
		public function Tetrafever() {
			addEventListener(Event.ADDED_TO_STAGE, addedHandler)
		}

		private function addedHandler(event:Event):void
		{
			_gameController = new GameController(this);
			_gameController.initLogic();
		}
}
}
