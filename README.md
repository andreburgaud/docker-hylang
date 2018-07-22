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
hy 0.15.0 using CPython(default) 3.7.0 on Linux
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
Python 3.7.0 (default, Jul 16 2018, 23:44:28)
[GCC 6.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print('Python')
Python
>>> import sys
>>> print(sys.version)
3.7.0 (default, Jul 16 2018, 23:44:28)
[GCC 6.4.0]
>>> exit()
$
```

# Start the default shell

```
$ docker run -it --rm andreburgaud/hylang sh
/ # python
Python 3.7.0 (default, Jul 16 2018, 23:44:28)
[GCC 6.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
/ # hy
hy 0.15.0 using CPython(default) 3.7.0 on Linux
=> (exit)
/ # exit
$
```

# License

MIT License
