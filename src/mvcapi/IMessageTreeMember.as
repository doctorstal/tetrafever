/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcapi
{
	public interface IMessageTreeMember extends ITreeMember
	{
		function sendMessageUp(message:IMessage):void;
		function sendMessageDown(message:IMessage):void;

	}
}
