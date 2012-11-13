/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl.controller
{
	import flash.display.DisplayObjectContainer;

	import mvcimpl.model.ModelTreeMember;
	import mvcimpl.view.ViewTreeMember;

	public class MainController extends ControllerTreeMember
	{

		protected var _model:ModelTreeMember;
		protected var _view:ViewTreeMember;

		public function MainController(host:DisplayObjectContainer)
		{
			super(host);
			_model = createModel();
			_view = createView(_model);

			// TODO tree initialization maybe? Some sort of config or what? What is the right way to describe MVC tree?
		}

		/*
			Creates root of model tree
			This method should be overridden.
		 */

		protected function createModel():ModelTreeMember
		{
			return new ModelTreeMember();
		}

		/*
		 Creates root of view tree.
		 This method should be overridden.
		 */
		protected function createView(model:ModelTreeMember):ViewTreeMember
		{
			return new ViewTreeMember(_host, model);
		}
	}
}
