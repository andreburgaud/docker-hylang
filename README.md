# Project

Docker image for Hy based on Alpine Linux.

# Hy (Hylang)

A dialect of Lisp that's embedded in Python http://hylang.org/. Hy source code
is available on GitHub at https://github.com/hylang/hy. It is distributed under
the MIT license.

# Pull Hylang image

```
$ docker pull andreburgaud/hylang
```

# Start Hy REPL

```
$ docker run -it --rm andreburgaud/hylang
```

# Start Python REPL

```
$ docker run -it --rm andreburgaud/hylang python
```


# Start a basic shell

```
$ docker run -it --rm andreburgaud/hylang sh
/ # python
Python 3.6.3 (default, Oct 27 2017, 16:50:44)
[GCC 6.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
/ # hy
hy 0.13.0+173.g49d2523 using CPython(default) 3.6.3 on Linux
=> (exit)
/ # exit
$
```

# License

MIT License (see LICENSE file)
