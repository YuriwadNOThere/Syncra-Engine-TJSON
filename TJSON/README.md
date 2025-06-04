# Custom TJSON For Syncra Engine!

A lightweight custom JSON parser built for Syncra Engine

## Usage

```haxe
import TSON.src.SyncraTJSON;

var data = SyncraTJSON.parseFile("mods/Example/Mod-Info.json");
trace(data.name);
