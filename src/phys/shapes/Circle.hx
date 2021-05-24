package phys.shapes;

import src.core.Shape;

class Circle extends Shape {

    // ** Publics.

    public var radius(get, null):Float;

    // ** Privates.

    private var __radius:Float = 0;

    public function new(radius:Float, x:Float = 0, y:Float = 0) {
        
        super(x, y);

        __radius = radius;
    }

    // ** Getters and setters.

    private function get_radius():Float {

		return __radius;
	}
}