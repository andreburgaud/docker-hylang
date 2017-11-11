# Project

Docker image for Hy (Hylang) based on Alpine Linux.

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
hy 0.13.0+176.g97987d7 using CPython(default) 3.6.3 on Linux
=> (print "Hy")
Hy
=> (import astor)
=> (print astor.__version__)
0.6.1
=> (exit)
$
```

# Start the Python REPL

```
$ docker run -it --rm andreburgaud/hylang python
Python 3.6.3 (default, Nov  2 2017, 12:57:36)
[GCC 6.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print('Python')
Python
>>> exit()
$
```

# Start the default shell

```
$ docker run -it --rm andreburgaud/hylang sh
/ # python
Python 3.6.3 (default, Nov  2 2017, 12:57:36)
[GCC 6.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
/ # hy
hy 0.13.0+176.g97987d7 using CPython(default) 3.6.3 on Linux
=> (exit)
/ # exit
$
```

# License

MIT License (see LICENSE file)
