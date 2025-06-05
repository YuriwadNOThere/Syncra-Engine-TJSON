package TJSON.TheFile;

import sys.io.File;
import sys.FileSystem;
import haxe.Json;
import haxe.Exception;

class TJSON {
    public static function parseFile(path:String):Dynamic {
        if (!FileSystem.exists(path)) {
            throw new Exception("TJSON: File not found: " + path);
        }

        var content = File.getContent(path);
        return parse(content, path);
    }

    public static function parse(input:String, ?source:String = null):Dynamic {
        try {
            var clean = sanitize(input);
            return Json.parse(clean);
        } catch (e) {
            var location = source != null ? " in " + source : "";
            throw new Exception("TJSON parse error" + location + ": " + e);
        }
    }

    private static function sanitize(raw:String):String {
        var noComments = raw.replace(~/\/\*[\s\S]*?\*\//gm, "");
      
        var trailingCommaSafe = noComments.replace(~/,\s*([\}\]])/g, "$1");

        return trailingCommaSafe;
    }
}
