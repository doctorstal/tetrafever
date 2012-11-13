/**
 * @author alexeyst
 * @e-mail doctorstal@gmail.com
 * @date 21.10.12
 * @time 12:17
 */
package tetrafever.view
{
	import flash.display.DisplayObjectContainer;

	import mvcimpl.model.ModelTreeMember;
	import mvcimpl.view.ViewTreeMember;

	public class GameView extends ViewTreeMember
	{
		public function GameView(host:DisplayObjectContainer, model:ModelTreeMember)
		{
			super(host, model);
		}
	}
}
