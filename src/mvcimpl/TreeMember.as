/**
 * @author alexeyst
 * @date 10/12/12
 */
package mvcimpl
{

	import mvcapi.ITreeMember;

	public class TreeMember implements ITreeMember
	{
		private var _children:Vector.<ITreeMember> = new Vector.<ITreeMember>();

		private var _parent:ITreeMember;

		public function TreeMember()
		{
		}

		public function addToParent(newParent:ITreeMember):void
		{
			if (parent)
			{
				parent.removeChild(this);
			}
			_parent = newParent;
		}

		public function addChild(child:ITreeMember):ITreeMember
		{
			children.push(child);
			child.addToParent(this);
			return child;
		}

		public function removeChild(child:ITreeMember):ITreeMember
		{
			var ind:int = children.indexOf(child);
			if (ind != -1)
			{
				child.addToParent(null);
				return children.splice(ind, 1)[0];
			}
			return null;
		}

		public function get parent():ITreeMember
		{
			return _parent;
		}

		public function get children():Vector.<ITreeMember>
		{
			return _children;
		}

		public function dispose():void
		{
			for (var i:int = 0; i < children.length; i++)
			{
				var child:ITreeMember = children[i];
				removeChild(child);
				child.dispose();
			}
		}
	}
}
