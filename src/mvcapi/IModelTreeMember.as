/**
 * Created with IntelliJ IDEA.
 * User: Samsung
 * Date: 21.10.12
 * Time: 10:59
 * To change this template use File | Settings | File Templates.
 */
package mvcapi
{
	/**
	IModelTreeMember should provide ability to handle upcoming messages for third party classes.
	 Still - that messages, that is sent down, should be handled by model tree member itself and resent down.
	 */
	public interface IModelTreeMember extends IMessageTreeMember
	{
		function addMessageHandler(messageName:String, handler:Function):void;
		function removeMessageHandler(messageName:String, handler:Function):void;
	}
}
