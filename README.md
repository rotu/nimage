# Welcome to Nim
[![Build Status](https://travis-ci.com/moigagoo/nimage.svg?branch=develop)](https://travis-ci.com/moigagoo/nimage)

![](https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-crown.png)

Nim (formerly known as "Nimrod") is a statically typed, imperative programming language that tries to give the programmer ultimate power without compromises on runtime efficiency. This means it focuses on compile-time mechanisms in all their various forms.

Beneath a nice infix/indentation based syntax with a powerful (AST based, hygienic) macro system lies a semantic model that supports a soft realtime GC on thread local heaps. Asynchronous message passing is used between threads,
so no "stop the world" mechanism is necessary. An unsafe shared memory heap is also provided for the increased efficiency that results from that model.

- [Official site](http://nim-lang.org)
- [Tutorials](http://nim-lang.org/learn.html)
- [Documentation](http://nim-lang.org/documentation.html)
- [Report an issue with images](https://github.com/moigagoo/nimage/issues/new)

# Tags

Tags indicate Nim versions, base images, and flavors. For example, `nimlang/nim:0.16.0-ubuntu-regular` means Nim version 0.16.0, based on Ubuntu, with Nimble installed. Ubuntu is the default base, so you can omit it in the tag: `nimlang/nim:0.16.0-regular`. Regular is the default flavor, so you can omit it as well: `nimlang/nim:0.16.0`. The latest Nim version is additionally tagged as `latest`: `nimlang/nim:latest`. And since Docker adds `latest` automatically, you can just write `nimlang/nim`.

So, all together:

nimlang/nim = nimlang/nim:latest = nimlang/nim:0.16.0 = nimlang/nim:0.16.0-ubuntu =nimlang/nim:latest-ubuntu = nimlang/nim:0.16.0-regular = nimlang/nim:latest-regular = nimlang/nim:0.16.0-ubuntu-regular = nimlang/nim:latest-ubuntu-regular

Phew, that's one long list! Fortunately, unless you need a specific version of Nim, you'll probably need just `nimlang/nim`, `nimlang/nim:alpine`, or `nimlang/nim:onbuild`.

## Bases

There are currently two bases: Ubuntu and Alpine. Ubuntu is the default one.

## Flavors

Images come in three flavors: *slim*, *regular*, and *onbuild*. Slim images include only the Nim compiler. Regular images include the compiler and [Nimble](https://github.com/nim-lang/nimble) package manager. Onbuild images are
meant to be used in Dockerfiles for Nimble packages.

# Using the Images

## Get the Latest Version

```shell
$ docker pull nimlang/nim
```

```shell
$ docker pull nimlang/nim:devel
```

## Compiling a Single File

```shell
$ docker run --rm -v `pwd`:/usr/src/app -w /usr/src/app nimlang/nim nim c -r myapp.nim
```

## Compiling a *Static* Single File

```shell
$ docker run --rm -v `pwd`:/usr/src/app -w /usr/src/app nimlang/nim:alpine nim c --passL:-static myapp.nim
```

## Building a Nimble Package

Create a Dockerfile in the package root:

```dockerfile
FROM nimlang/nim:onbuild
ENTRYPOINT ["./mycompiledbinary"]
```

Build your image and run the compiled binary:

```shell
$ docker build -t myapp .
$ docker run --rm myapp
```

