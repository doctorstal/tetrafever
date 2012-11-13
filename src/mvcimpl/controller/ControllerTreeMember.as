/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl.controller
{
import flash.display.DisplayObjectContainer;

import mvcimpl.model.ModelTreeMember;

public class ControllerTreeMember extends ModelTreeMember
	{
        protected var _host:DisplayObjectContainer;

        public function ControllerTreeMember(host:DisplayObjectContainer)
		{
            _host = host;
		}
	}
}
