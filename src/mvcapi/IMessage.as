/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcapi
{
	public interface IMessage
	{
		function get sender():IMessageTreeMember;
		function get receiver():IMessageTreeMember;
		function get name():String;
		function get body():Object;
	}
}
