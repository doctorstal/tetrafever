/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcapi
{
	public interface ITreeMember extends IDisposable
	{
		function addChild(child:ITreeMember):ITreeMember;
		function removeChild(child:ITreeMember):ITreeMember;
		function addToParent(newParent:ITreeMember):void;
		function get parent():ITreeMember;
		function get children():Vector.<ITreeMember>;

	}
}
