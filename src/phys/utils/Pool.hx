package phys.utils;

class Pool<T> implements IPool<T> {

    // ** Publics.

    public var count:Int = 0;

    public var pool:Array<T> = new Array<T>();

    public var type:Class<T>;

    public function new(type:Class<T>) {
     
        this.type = type;
    }

    public function get():T {

        if (count == 0) return Type.createInstance(type, []);

        return pool[--count];
    }

    public function put(objectect:T):Void {

        if (object != null) {

            var i:Int = pool.indexOf(object);

            // if the objectect's spot in the pool was overwritten, or if it's at or past count (in the inaccessible zone)
            if (i == -1 || i >= count) {

                pool[count++] = object;
            }
        }
    }

    public function preAllocate(amount:Int):Void {

        while (amount-- > 0) pool[count++] = Type.createInstance(type, []);
    }

    public function clear():Array<T> {

        count = 0;

        var _old_pool = pool;

        pool = [];

        return _old_pool;
    }
}

interface IPooled {

    function put():Void;

    private var pooled:Bool;

}
  
interface IPool<T> {

    function pre_allocate(amount:Int):Void;

    function clear():Array<T>;
}