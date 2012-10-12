/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl
{
	import mvcapi.IMessage;
	import mvcapi.IMessageTreeMember;
	import mvcapi.ITreeMember;

	public class MessageTreeMember extends TreeMember implements IMessageTreeMember
	{
		public function MessageTreeMember()
		{
		}


		override public function addToParent(newParent:ITreeMember):void
		{
			super.addToParent(newParent);
			var messageName:String = (newParent == null)? Message.REMOVED_FROM_PARENT : Message.ADDED_TO_PARENT;
			Message.send(this,messageName,newParent);
		}

		override public function removeChild(child:ITreeMember):ITreeMember
		{
			var res:ITreeMember = super.removeChild(child);
			Message.send(this,Message.REMOVED_CHILD,child);
			return res;
		}

		override public function addChild(child:ITreeMember):ITreeMember
		{
			var res:ITreeMember = super.addChild(child);
			Message.send(this,Message.ADDED_CHILD,child);

			return res;
		}

		public final function sendMessageUp(message:IMessage):void
		{
			handleMessage(message,true);
			if(parent is IMessageTreeMember) (parent as IMessageTreeMember).sendMessageUp(message);
		}

		public final function sendMessageDown(message:IMessage):void
		{
			handleMessage(message,false);
			for (var i:int = 0; i < children.length; i++)
			{
				var child:IMessageTreeMember = children[i] as IMessageTreeMember;
				if(child) child.sendMessageDown(message);
			}
		}

		protected function handleMessage(message:IMessage, isUpcomingMessage:Boolean):void
		{

		}

	}
}
