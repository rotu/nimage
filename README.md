[![Build Status](https://travis-ci.org/moigagoo/nimage.svg?branch=master)](https://travis-ci.org/moigagoo/nimage)
[![Chat on Skype](https://img.shields.io/badge/chat-on_Skype-00AFF0.svg?logo=data%3Aimage%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABmJLR0QA%2FwD%2FAP%2BgvaeTAAAACXBIWXMAAAsTAAALEwEAmpwYAAAAB3RJTUUH4AMVBxkJHWRrZgAAAB1pVFh0Q29tbWVudAAAAAAAQ3JlYXRlZCB3aXRoIEdJTVBkLmUHAAADL0lEQVRYw71Xu1IaURj%2BzmHxFpXdDI2Ng2OTxsnGxibF0tgGkmgLPkHkCdQnwDcAWzFKitSsMzZWrkNj48DY0DDurqMMCrsnBddlrzCSr4I9Z87%2F%2Fbfv%2FIdgFDmVxzL2Qdg3ECpa1pipgJETPCGPRVjXdgQZE4BY%2Fp2paVCWBaH8JIeBmVUAMgxyEpTQgMBv9RCUHOC9wMwqTJLBT6HoT%2BBMTSNEcpgGmClDJ0nsCZozgZzKI8IqE4c9GAkNbRLHrqCMLtFOwU3ROAAQyoNjJZyqoj0C5483tmr3QGIlDDESwucIBR%2FuZFDRDdzqJoq1FrQW846ETtaG00FwobGghrMbc4gtUM99%2BYc3ZMpNdyLMlPH9Y3wsAtmNOeyvzwaOuNZiiF%2B9QNEN5w0GS%2Fa6g%2FodJkU5R%2BPVhgm53nY0wocJcpvz7odSlu395PwIpFbDNu%2BS1w3I9Xb%2FW2yBIrc5Dyk6OE6MhLyKMoaCKmFHkCmYqXgRGM15%2FuHNYrwXjfjVi%2BV7tWF6exZiqU4KGDkZp6MSK%2BF%2B9Y8ied1AptxEptzEl9Kzb3YHQsQT1W1XbnMe6dUZWxqKtRYu6wbketvfWzckeUJQUCVwpORVhKWvH3yrXq63cVk3UKy1ghNqs7hvF8j1No7uXj338GHS14nK9hKyG3OuabJLcQAc3jVtReaF%2FfVZ36iNRaAXifjVC4S%2FT0heN3B8%2F%2BouNN02HK0d9%2Bs4oBy7hV%2BKcvi1PmPRgWHS7sXDBDo0ybh6chNfRGV7ydGjXkd4Sq8blpHupUD2ugfESMhR7ZzIjHdNs1SHgBFcjC62FhxJpFftKfBtR0LFQa%2BcP1ZAaMzpYKeLRdGNfsjFSMhR%2B4N0DhmaiBMIkYugauiH4%2FtXZMrNMcfy88cSCJXcevvg06yvwFQbJjLlJoq11gTvggADqhTlIEU5y0imtRhudROKbgQ23Hvo2N05VUVwrDT1QRUATHbkHM%2F%2FQaI7oDpL8a6gQCdrYKY8Pe9JBnuC5n9lnamJ7nsx9p6hxw%2Fh0F6EXiioUneMkiYmw0yt%2B17MO3fBOCio1nZ9hoJlpEFYyuVZ%2FwdPOB59I%2F4Dg8dx51ZL74sAAAAASUVORK5CYII%3D%0A)](https://join.skype.com/eXDj06M5lJfq)

# Welcome to Nim

[![Join the chat at https://gitter.im/moigagoo/nimage](https://badges.gitter.im/moigagoo/nimage.svg)](https://gitter.im/moigagoo/nimage?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![King's crown](https://raw.githubusercontent.com/nim-lang/assets/master/Art/logo-withBackground.png)

Nim (formerly known as "Nimrod") is a statically typed, imperative programming language that tries to give the programmer ultimate power without compromises on runtime efficiency. This means it focuses on compile-time mechanisms in all their various forms.

Beneath a nice infix/indentation based syntax with a powerful (AST based, hygienic) macro system lies a semantic model that supports a soft realtime GC on thread local heaps. Asynchronous message passing is used between threads, so no "stop the world" mechanism is necessary. An unsafe shared memory heap is also provided for the increased efficiency that results from that model.

- [Official site](http://nim-lang.org)
- [Tutorials](http://nim-lang.org/learn.html)
- [Documentation](http://nim-lang.org/documentation.html)
- [Report an issue with images](https://github.com/moigagoo/nimage/issues/new)

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
| `0.14.3-alpine-slim`          | [0.14.3/alpine/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/alpine/slim/Dockerfile) |
| `0.14.3-slim`          | [0.14.3/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/slim/Dockerfile) |
| `0.14.2-slim`          | [0.14.2/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.2/slim/Dockerfile) |
| `0.14.0-slim`          | [0.14.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.0/slim/Dockerfile) |
| `0.13.0-slim`          | [0.13.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.13.0/slim/Dockerfile) |
| `0.12.0-slim`          | [0.12.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.12.0/slim/Dockerfile) |
| `0.11.2-slim`          | [0.11.2/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.11.2/slim/Dockerfile) |
| `0.11.0-slim`          | [0.11.0/slim/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.11.0/slim/Dockerfile) |

## Alpine
| Tag                    | Dockerfile                                                                                      |
| ---------------------- | ----------------------------------------------------------------------------------------------- |
| `0.14.3-alpine`          | [0.14.3/alpine/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/alpine/Dockerfile) |
| `0.12.0-alpine`          | [0.12.0/alpine/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.12.0/alpine/Dockerfile) |
| `0.11.2-alpine`          | [0.11.2/alpine/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.11.2/alpine/Dockerfile) |
| `0.11.0-alpine`          | [0.11.0/alpine/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.11.0/alpine/Dockerfile) |


## Onbuild

| Tag                    | Dockerfile                                                                                            |
| ---------------------- | ----------------------------------------------------------------------------------------------------- |
| `0.14.3-alpine-onbuild`       | [0.14.3/alpine/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/alpine/onbuild/Dockerfile) |
| `0.14.3-onbuild`       | [0.14.3/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.3/onbuild/Dockerfile) |
| `0.14.2-onbuild`       | [0.14.2/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.2/onbuild/Dockerfile) |
| `0.14.0-onbuild`       | [0.14.0/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.14.0/onbuild/Dockerfile) |
| `0.13.0-onbuild`       | [0.13.0/onbuild/Dockerfile](https://github.com/moigagoo/nimage/blob/master/0.13.0/onbuild/Dockerfile) |


# Using the Images

## Get the Latest Stable or Delevopment Version

Stable:

```shell
$ docker pull nimlang/nim
```

Development:

```shell
$ docker pull nimlang/nim:devel
```

## Compiling a Single File

```shell
$ docker run -it --rm --name my-running-app -v `pwd`:/usr/src/myapp -w /usr/src/myapp nimlang/nim nim c -r your-nim-file.nim
```

## Compiling a **Static** Single File

```shell
$ docker run -it --rm --name my-running-app -v `pwd`:/usr/src/myapp -w /usr/src/myapp nimlang/nim:0.14.3-alpine nim c --passL:-static your-nim-file.nim
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
