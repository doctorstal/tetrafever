/**
 * @author alexeyst
 * @e-mail doctorstal@gmail.com
 * @date 21.10.12
 * @time 12:42
 */
package tetrafever.model.board.figures
{
	import flash.geom.Point;
	import flash.geom.Rectangle;

	import mvcimpl.Message;

	import mvcimpl.model.ModelTreeMember;

	import tetrafever.model.messages.FigureMessages;

	public class FigureModel extends ModelTreeMember
	{
		public var tlCorner:Point;
		public var squares:Vector.<Point>;

		protected var _rotation:int = 0;

		private var _bounds:Rectangle = new Rectangle();
		public function FigureModel()
		{
			super();
			createSquares();
		}

		private function createSquares():void
		{
			squares = new Vector.<Point>();
			var grid:Array = getGrid();
			// set corners to opposite sides, so we could calculate bounds, using Math.min and Math.max
			var tlPoint:Point = new Point(grid[0].length,grid.length);
			var brPoint:Point = new Point(0,0);
			for (var i:int = 0; i < grid.length; i++)
			{
				var row:Array = grid[i];
				for (var j:int = 0; j < row.length; j++)
				{
					var cell:int = row[j];
					if(cell == 1)
					{
						squares.push(new Point(i, j));
						tlPoint.x = Math.min(tlPoint.x, i);
						tlPoint.y = Math.min(tlPoint.y, j);
						brPoint.x = Math.max(brPoint.x, i);
						brPoint.y = Math.max(brPoint.y, j);
					}

				}
			}
			_bounds.topLeft = tlPoint;
			_bounds.bottomRight = brPoint;

			/*var points:Array = description.split(";");
			for (var i:int = 0; i < points.length; i++)
			{
				var coordinates:Array = points[i].split(",");
				squares.push(new Point(coordinates[0],coordinates[1]));
			}*/
		}
/*		protected function get description():String
		{
			return "";
		}*/

		public function getGrid():Array
		{
			throw new Error("One should override this method in subclass.");
			return [];
		}
		public function get width():int
		{
			return _bounds.width;
		}
		public function get height():int
		{
			return _bounds.height;
		}
		public function get bounds():Rectangle
		{
			return _bounds;
		}

		public function rotate():void
		{
			_rotation=(_rotation+1)%4;
			createSquares();
			Message.send(this, FigureMessages.CHANGED);
		}
	}
}
