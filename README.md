# Project

Docker image for Hy (Hylang) based on Alpine Linux.

[![Docker Pulls](https://img.shields.io/docker/pulls/andreburgaud/hylang.svg)](https://hub.docker.com/r/andreburgaud/hylang/)
[![Docker Automated Build](https://img.shields.io/docker/automated/andreburgaud/hylang.svg)](https://hub.docker.com/r/andreburgaud/hylang/)
[![Docker Build Status](https://img.shields.io/docker/build/andreburgaud/hylang.svg)](https://hub.docker.com/r/andreburgaud/hylang/)
[![Layers](https://images.microbadger.com/badges/image/andreburgaud/hylang.svg)](https://microbadger.com/images/andreburgaud/hylang)
[![Version](https://images.microbadger.com/badges/version/andreburgaud/hylang.svg)](https://microbadger.com/images/andreburgaud/hylang)

# Hy (Hylang)

A dialect of Lisp that's embedded in Python http://hylang.org/. Hy source code
is available on GitHub at https://github.com/hylang/hy. It is distributed under
the MIT license.

# Pull the Hylang image

```
$ docker pull andreburgaud/hylang
```

# Start the Hy REPL

```
$ docker run -it --rm andreburgaud/hylang
hy 0.16.0 using CPython(default) 3.7.2 on Linux
=> (print "Hy")
Hy
=> (import astor)
=> (print astor.__version__)
0.7.1
=> (exit)
$
```

# Start the Python REPL

```
$ docker run -it --rm andreburgaud/hylang python
Python 3.7.2 (default, Feb  6 2019, 01:47:18)
[GCC 8.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print('Python')
Python
>>> import sys
>>> print(sys.version)
3.7.2 (default, Feb  6 2019, 01:47:18)
[GCC 8.2.0]
>>> exit()
$
```

# Start the default shell

```
$ docker run -it --rm andreburgaud/hylang sh
/ # python
Python 3.7.2 (default, Feb  6 2019, 01:47:18)
[GCC 8.2.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
/ # hy
hy 0.16.0 using CPython(default) 3.7.2 on Linux
=> (exit)
/ # exit
$
```

# License

MIT License
