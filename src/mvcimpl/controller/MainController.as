/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl.controller
{
	import flash.display.DisplayObjectContainer;

	public class MainController extends ControllerTreeMember
	{
		private var _host:DisplayObjectContainer;

		public function MainController(host:DisplayObjectContainer)
		{
			_host = host;
		}
	}
}
