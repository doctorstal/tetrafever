/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl
{
	import mvcapi.IMessage;
	import mvcapi.IMessageTreeMember;

	public class Message implements IMessage
	{
		public static const ADDED_TO_PARENT:String = "addedToParent";
		public static const ADDED_CHILD:String = "addedChild";
		public static const REMOVED_FROM_PARENT:String = "removedFromParent";
		public static const REMOVED_CHILD:String = "removedChild";



		private var _name:String;
		private var _sender:IMessageTreeMember;
		private var _receiver:IMessageTreeMember;

		private var _body:Object;

		public function Message(name:String,sender:IMessageTreeMember,receiver:IMessageTreeMember = null)
		{
			_name = name;
			_sender = sender;
			_receiver = receiver;
		}

		public static function send(sender:IMessageTreeMember,name:String,body:Object = null, receiver:IMessageTreeMember = null){
			var message:Message = new Message(name, sender, receiver);
			message.setBody(body);
			sender.sendMessageUp(message);
			message.dispose();
		}

		public function setBody(body:Object):void
		{
			_body = body;
		}
		public function get sender():IMessageTreeMember
		{
			return _sender;
		}

		public function get receiver():IMessageTreeMember
		{
			return _receiver;
		}

		public function get name():String
		{
			return _name;
		}

		public function get body():Object
		{
			return _body;
		}

		public function dispose():void
		{
			_name = null;
			_body = null;
			_receiver = null;
			_sender = null;
		}
	}
}
