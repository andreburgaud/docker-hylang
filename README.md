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
hy 0.20.0 using CPython(default) 3.9.1 on Linux
=> (print "Hy")
Hy
=> (import astor)
=> (print astor.__version__)
0.8.1
=> (exit)
$
```

# Start the Python REPL

```
$ docker run -it --rm andreburgaud/hylang python
Python 3.9.1 (default, Dec 17 2020, 01:59:58)
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print('Python')
Python
>>> import sys
>>> print(sys.version)
3.8.2 (default, Mar 24 2020, 02:56:01)
[GCC 9.2.0]
>>> exit()
$
```

# Start the default shell

```
$ docker run -it --rm andreburgaud/hylang sh
/ # python
Python 3.9.1 (default, Dec 17 2020, 01:59:58)
[GCC 9.3.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
/ # hy
hy 0.20.0 using CPython(default) 3.9.1 on Linux
=> (exit)
/ # exit
$
```

# License

MIT License
