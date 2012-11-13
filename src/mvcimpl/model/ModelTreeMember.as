/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl.model
{
	import mvcapi.IMessage;
	import mvcapi.IModelTreeMember;

	import mvcimpl.MessageTreeMember;

	public class ModelTreeMember extends MessageTreeMember implements IModelTreeMember
	{
		private var _messageHandlers:Object;
		public function ModelTreeMember()
		{
			super();
			_messageHandlers = new Object();
		}

		public function addMessageHandler(messageName:String, handler:Function):void
		{
			var handlers:Vector.<Function> = allocateHandlersVector(messageName);
			handlers.push(handler);

		}

		public function removeMessageHandler(messageName:String, handler:Function):void
		{
			var handlers:Vector.<Function> = allocateHandlersVector(messageName);
			var ind:int = handlers.indexOf(handler);
			if(ind!=-1){
				handlers.splice(ind, 1);
			}
		}

		private function allocateHandlersVector(messageName:String):Vector.<Function>
		{
			if(hasHandlersVector(messageName))
			{
				_messageHandlers[messageName]=new Vector.<Function>();
			}
			return _messageHandlers[messageName];
		}
		private function willTrigger(messageName):Boolean
		{
			return hasHandlersVector(messageName)&&_messageHandlers[messageName].length>0;
		}

		private function hasHandlersVector(messageName:String):Boolean
		{
			return _messageHandlers[messageName] == null;
		}




		override final protected function handleMessage(message:IMessage, isUpcomingMessage:Boolean):void
		{
			if(isUpcomingMessage){
				noticeHandlers(message);
			}else{
				handleDownMessage(message);
			}
		}

		private function noticeHandlers(message:IMessage):void
		{
			var messageName:String = message.name;
			if(hasHandlersVector(messageName))
			{
				var handlers:Vector.<Function> = allocateHandlersVector(messageName);
				for (var i:int = 0; i < handlers.length; i++)
				{
					var handler:Function = handlers[i];
					handler.apply(null,message);
				}
			}
		}

		protected function handleDownMessage(message:IMessage):void
		{

		}


		override public function dispose():void
		{
			super.dispose();
			_messageHandlers.length = 0;
		}
	}
}
