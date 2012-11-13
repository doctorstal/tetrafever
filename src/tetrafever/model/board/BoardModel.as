/**
 * @author alexeyst
 * @date 10/12/12
 */
package tetrafever.model.board
{
	import mvcimpl.model.ModelTreeMember;

	import tetrafever.model.board.field.FieldModel;
	import tetrafever.model.board.figures.FigureModel;

	public class BoardModel extends ModelTreeMember
	{
		private var _field:FieldModel;
		private var _activeFigure:FigureModel;

		public function BoardModel()
		{
			createChildren();

		}

		private function createChildren():void
		{
			_field = new FieldModel();
			addChild(_field);
			_activeFigure = new FigureModel();
			addChild(_activeFigure);
		}
	}
}
