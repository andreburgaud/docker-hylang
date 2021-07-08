(import
  sys
  os
  [ast :as _ast]
  [math :as _math]
  [subprocess [run :as _run]]
 
  [hy.contrib.pprint [pformat pp]])
 
(defclass _TermColors []
  (setv COLOR-TEMPLATES [(, "black"        "0;30")
                         (, "red"          "0;31")
                         (, "green"        "0;32")
                         (, "brown"        "0;33")
                         (, "blue"         "0;34")
                         (, "purple"       "0;35")
                         (, "cyan"         "0;36")
                         (, "light_gray"   "0;37")
                         (, "dark_gray"    "1;30")
                         (, "light_red"    "1;31")
                         (, "light_green"  "1;32")
                         (, "yellow"       "1;33")
                         (, "light_blue"   "1;34")
                         (, "light_purple" "1;35")
                         (, "light_cyan"   "1;36")
                         (, "white"        "1;37")
                         (, "normal"       "0"   )]
        NOCOLOR ""
        base "\001\033[{}m\002")
 
  (defn __init__ [self]
    (for [[k v] self.COLOR-TEMPLATES]
      (setattr self k (if (in (os.environ.get "TERM")
                              #{"xterm" "xterm-color" "xterm-256color" "linux"
                               "screen" "screen-256color" "screen-bce"})
                          (self.base.format v)
                          self.NOCOLOR)))))
 
(setv _c (_TermColors)
      sys.ps1 f"{_c.green}=> {_c.normal}"
      sys.ps2 f"{_c.red}... {_c.normal}")
 
(setv _old-unparse _ast.unparse
      _new-unparse (fn [#* args #** kwargs]
                     f"{_c.blue}{(_old-unparse #* args #** kwargs)}{_c.normal}")
      _ast.unparse _new-unparse
      _pformat (fn [#* args #** kwargs]
                 f"{_c.green}{(pformat #* args #** kwargs)}{_c.normal}"))
 
(setv repl-spy False
      repl-output-fn _pformat)
