# Metal Library - mtl_library

Collection of various mtl (Metal) libs. My attempt to streamline most of the \*.mtl
files in order to join forces :)

## Idea/Purpose

Yes, idea & purpose of this repo is:

1. to collect any sources within `_source` folder first
2. to double check those sources and extract/order/categorize/rename essential/important functions into `lib` folder.
3. to provide a testframework support this process

This will basically build up a standard library where file can be included on demand & functions re-used in a structured way. We'd avoid writing same functions over and over again. 
Ideally each function has a test and documentation & follows same coding standards. I know this is very ambitious, but its at least a start... Thanks for your contributions!

## Projects

- https://code.google.com/archive/p/nabaztag-source-code/source/default/source
- https://github.com/OpenJabNab/OpenJabNab
- https://github.com/rngtng/NabaztagHackKit
- https://github.com/andreax79/ServerlessNabaztag
- https://github.com/ccarlo64/nab_mqtt

## Compilation

In order to compile the code, make use of https://github.com/rngtng/mtl_linux (aktive fork of https://github.com/RedoXyde/mtl_linux)

### Mac OSX / macOS

Simplest way on macOS is using [homebrew](https://brew.sh/). Find the latest formular here: https://github.com/rngtng/homebrew-mtl_linux with

```
brew tap rngtng/homebrew-mtl_linux
brew install mtl_linux
```

## Test

Once compiler & simulator installed, run the test

```
make test
```

### Testing

The lib includes a simple test framework to test the functions. See `test/*`. A typical test looks like this:

```c
 let test "math operations" -> t in
  (
    //assertions
    assert_equalI 0 10 - (2 * 5);
  0);
```

The framework offers assertions similar to [Ruby Test::Unit](http://ruby-doc.org/stdlib-1.9.3/libdoc/test/unit/rdoc/Test/Unit.html) style. Mind that the variable type has to be given
explicit. Convention is:

  * I = integer
  * S = string
  * L = list
  * T = table

Following assertions are available (see bytecode/test/helper.mtl)

  * assert_equalI I I
  * assert_equalI S S
  * assert_nil I
  * assert_equalIL
  * assert_equalSL
  * assert_equalTL
  
## Documentation

See *\_docs* for a collection of language grammar and command description.

## About mtl (Metal)

MTL/Metal is a custom language by [Sylvain Huet](http://www.sylvain-huet.com/?lang=en). It is referenced as _Metal_ and files end with `.mtl`. Unfortunately documentation is very poor (and in french). Find the Grammar rules here: https://docs.google.com/document/d/1KMg2wSyMKTmsilCpOByi_59uk5dD8XMfGAu20W63kZE/edit?hl=en_US

Metal is used for programming the Nabaztag, where with `bytecode` the program name is referenced. See original sources here: `/_sources/original/`.


