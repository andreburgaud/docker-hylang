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
hy 1.0a3 using CPython(default) 3.10.0b3 on Linux
=> (print "Hy")
Hy
=> (exit)
$
```

# Start the Python REPL

```
$ docker run -it --rm andreburgaud/hylang python
Python 3.10.0b3 (default, Jun 29 2021, 01:21:25) [GCC 10.3.1 20210424] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> print('Python')
Python
>>> import sys
>>> print(sys.version)
3.10.0b3 (default, Jun 29 2021, 01:21:25) [GCC 10.3.1 20210424]
>>> exit()
$
```

# Start the default shell

```
$ docker run -it --rm andreburgaud/hylang sh
/ # python
Python 3.10.0b3 (default, Jun 29 2021, 01:21:25) [GCC 10.3.1 20210424] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> exit()
/ # hy
hy 1.0a3 using CPython(default) 3.10.0b3 on Linux
=> (exit)
/ # exit
$
```

# Hylang Interpretor Coloring

The file `hyrc.hy` that provides coloring for the Hylang REPL was created from a file shared by [Allie Joe Casey](https://github.com/allison-casey) in the following Gist: https://gist.github.com/allison-casey/924912d86826f9b7b2e97f8bcff5e548


# License

MIT License
