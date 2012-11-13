/**
 * @author alexeyst
 * @e-mail doctorstal@gmail.com
 * @date 13.11.12
 * @time 3:29
 */
package tetrafever.model.board.figures
{
	public class StickModel extends FigureModel
	{
		private static const ROTATION_GRIDS:Array = [
				[
					[1,1,1,1]
				],
				[
					[0,1,0,0],
					[0,1,0,0],
					[0,1,0,0],
					[0,1,0,0]
				]
			]
		public function StickModel()
		{
			super();
		}

		override public function getGrid():Array
		{
			return ROTATION_GRIDS[_rotation%2];
		}
	}
}
