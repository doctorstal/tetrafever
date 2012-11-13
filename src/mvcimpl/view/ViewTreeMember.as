/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl.view
{
import flash.display.DisplayObjectContainer;

import mvcimpl.MessageTreeMember;
import mvcimpl.model.ModelTreeMember;

public class ViewTreeMember extends MessageTreeMember
	{

        private var _host:DisplayObjectContainer;
		public function ViewTreeMember(_host:DisplayObjectContainer,_model:ModelTreeMember)
		{
		}
	}
}
