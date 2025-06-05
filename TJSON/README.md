# Custom TJSON For Syncra Engine!

A lightweight custom JSON parser built for Syncra Engine

## Usage

```haxe
import TJSON.TheFile;

var data = TJSON.parseFile("mods/MyMod/Mod-Info.json");

trace("Mod Name": + data.name);
trace("Author": + data.author);
