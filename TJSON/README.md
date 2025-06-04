# Custom TJSON For Syncra Engine!

A lightweight custom JSON parser built for Syncra Engine

## Usage

```haxe
import src.SyncraTJSON;

var data = SyncraTJSON.parseFile("mods/Example/Mod-Info.json");
trace(data.name);
