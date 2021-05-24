package phys.utils;

import phys.utils.Pool;

class AABB implements IPooled {

    // ** Publics.

    public var height(get, null):Float;

    public var pool(get, null):IPool<AABB>;

    public var width(get, null):Float;

    // ** Privates.

    private var __height:Float;

    private var __pool:Pool = new Pool<AABB>(AABB);

    private var __width:Float;

    public function new() {
        
    }
}