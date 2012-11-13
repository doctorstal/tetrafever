/**
 * @author alexeyst
 * @date 10/12/12
 */
package tetrafever.model.player
{
	import mvcimpl.model.ModelTreeMember;

	public class PlayerModel extends ModelTreeMember
	{
		public var score:Number;
		public var name:String;
		public var level:int;

		public function PlayerModel()
		{
		}
	}
}
