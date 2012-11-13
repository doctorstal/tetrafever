/**
 * @author alexeyst
 * @e-mail doctorstal@gmail.com
 * @date 21.10.12
 * @time 12:45
 */
package tetrafever.model.board.figures
{
	public class SquareFigureModel extends FigureModel
	{

		private static const GRID:Array = [
									[1,1],
									[1,1]
								];
		public function SquareFigureModel()
		{
			super();
		}

/*		override protected function get description():String
		{
			return "0,0;0,1;1,0;1,1";
		}*/

		override public function getGrid():Array
		{

			return GRID;
		}

	}
}
