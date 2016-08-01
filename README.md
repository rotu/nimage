# Welcome to Nim

![King's crown](https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-withBackground.png)

Nim (formerly known as "Nimrod") is a statically typed, imperative programming language that tries to give the programmer ultimate power without compromises on runtime efficiency. This means it focuses on compile-time mechanisms in all their various forms.

Beneath a nice infix/indentation based syntax with a powerful (AST based, hygienic) macro system lies a semantic model that supports a soft realtime GC on thread local heaps. Asynchronous message passing is used between threads, so no "stop the world" mechanism is necessary. An unsafe shared memory heap is also provided for the increased efficiency that results from that model.

- [Official site](http://nim-lang.org)
- [Tutorials](http://nim-lang.org/learn.html)
- [Documentation](http://nim-lang.org/documentation.html)

# Tags and Flavors

Image tags indicate Nim versions. The latest stable version is additionally tagged with `latest`, the latest development version—with `devel`.

Images come in three flavors: *regular*, *slim*, and *onbuild*. Regular images include the Nim compiler and [Nimble](https://github.com/nim-lang/nimble) package manager. Slim images include only the compiler. Onbuild images are meant to be used in Dockerfiles for Nimble packages because they invoke `nimble build` on build.

## Regular

| Tag                | Dockerfile                                                                            |
| ------------------ | ------------------------------------------------------------------------------------- |
| `0.14.3`, `devel`  | [0.14.3/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/Dockerfile) |
| `0.14.2`, `latest` | [0.14.2/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.2/Dockerfile) |
| `0.14.0`           | [0.14.0/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.0/Dockerfile) |
| `0.13.0`           | [0.13.0/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.13.0/Dockerfile) |

## Slim

| Tag                    | Dockerfile                                                                                      |
| ---------------------- | ----------------------------------------------------------------------------------------------- |
| `0.14.3-slim`          | [0.14.3/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/slim/Dockerfile) |
| `0.14.2-slim`          | [0.14.2/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.2/slim/Dockerfile) |
| `0.14.0-slim`          | [0.14.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.0/slim/Dockerfile) |
| `0.13.0-slim`          | [0.13.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.13.0/slim/Dockerfile) |
| `0.12.0-slim`          | [0.12.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.12.0/slim/Dockerfile) |
| `0.11.2-slim`          | [0.11.2/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.11.2/slim/Dockerfile) |
| `0.11.0-slim`          | [0.11.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.11.0/slim/Dockerfile) |

## Onbuild

| Tag                    | Dockerfile                                                                                            |
| ---------------------- | ----------------------------------------------------------------------------------------------------- |
| `0.14.3-onbuild`       | [0.14.3/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/onbuild/Dockerfile) |
| `0.14.2-onbuild`       | [0.14.2/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.2/onbuild/Dockerfile) |
| `0.14.0-onbuild`       | [0.14.0/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.0/onbuild/Dockerfile) |
| `0.13.0-onbuild`       | [0.13.0/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.13.0/onbuild/Dockerfile) |


# Using the Images

## Compiling a Single File

```shell
$ docker run -it --rm --name my-running-app -v `pwd`:/usr/src/myapp -w /usr/src/myapp nimlang/nim nim c -r your-nim-file.nim
```

## Building a Nimble Package

Create a Dockerfile in the package root:

```dockerfile
FROM nimlang/nim:0.14.2-onbuild
ENTRYPOINT ["./your-compiled-app-binary"]
```

Build your image and run the compiled binary:

```shell
$ docker build -t my-nim-app .
$ docker run -it --rm --name my-running-app my-nim-app
```