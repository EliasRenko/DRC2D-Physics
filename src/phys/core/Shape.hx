package phys.core;

class Shape {

    public var active:Bool = true;

    public var angle:Float = 0;

    public var x:Float = 0;

    public var y:Float = 0;

    public function new(x:Float, y:Float) {
        
        //** Set x position of the shape.

		__x = x;

		//** Set y position of the shape.

		__y = y;
    }

    public function init():Void {
        
    }

    public function release():Void {
        
    }

    public function test(shape:Shape):Void {

    }
}