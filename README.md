# DGui Graphic Library
[![Dub version](https://img.shields.io/dub/v/dguihub.svg)](https://code.dlang.org/packages/dguihub)
[![Dub downloads](https://img.shields.io/dub/dt/dguihub.svg)](https://code.dlang.org/packages/dguihub)

Yet another fork of [DGui Form Library](https://bitbucket.org/dgui/dgui)

## Compiling DGuiHub
The simplest way to compile is to use [dub](http://code.dlang.org/) package.

```
$ dub build
```
## Simple example
```
module hello;

import dguihub;

class MainForm : Form {
   public this() {
      this.text = "DGui Form";
      this.size = Size(500, 400);
      this.startPosition = FormStartPosition.centerScreen; // Set Form Position
   }
}

int main(string[] args) {
   return Application.run(new MainForm()); // Start the application
}

```

## Compiling examples

Directly from _examples_ directory
```
$ cd examples/hello
$ dub
```

or using subpackage

```
$ dub run dguihub:hello
```

## Related Projects

| Project                                     | Author        |
| -----------------------------               | -------       |
| [DGui](https://bitbucket.org/dgui/dgui)     | Antonio Trogu |
| [DGuiT](https://github.com/]rankLIKE/DguiT) | FrankLike     |

## License
The project is licensed under the terms of the [Boost Software License, Version 1.0](http://boost.org/LICENSE_1_0.txt).
