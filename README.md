# ocaml-cordova-plugin-media

* gen_js_api (master branch): [![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-media.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-media)

Binding to
[cordova-plugin-media](https://github.com/apache/cordova-plugin-media)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-media-example).
**Not developed**

## What does cordova-plugin-media do ?

```
This plugin provides the ability to record and play back audio files on a
device.
```

Source: [cordova-plugin-media](https://github.com/apache/cordova-plugin-media)

## Repository branches and tags

Only gen_js_api version is provided.

The binding has not been tested but it compiles.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-media https://github.com/dannywillems/ocaml-cordova-plugin-media.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-media [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin media with
```Shell
cordova plugin add cordova-plugin-media
```

## How to use ?

See the official documentation:
[cordova-plugin-media](https://github.com/apache/cordova-plugin-media)
