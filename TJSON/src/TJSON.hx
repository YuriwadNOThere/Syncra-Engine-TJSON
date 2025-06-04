package TJSON.src;

import haxe.Json;

class TJSON {
    public static function parse(json:String):Dynamic {
        try {
            return Json.parse(json);
        } catch (e) {
            throw 'TJSON Parse Error: ' + e;
        }
    }

    public static function parseFile(path:String):Dynamic {
        try {
            return parse(sys.io.File.getContent(path));
        } catch (e) {
            throw 'TJSON File Error ($path): ' + e;
        }
    }
}
