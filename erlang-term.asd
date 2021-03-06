(defpackage :erlang-term-system
  (:use :cl))

(in-package :erlang-term-system)

(asdf:defsystem :erlang-term
  :description "Erlang External Term Format"
  :author "Markus Flambard <mflambard@common-lisp.net>"
  :version "0.1.2"
  :license "MIT License"
  :depends-on (:alexandria :ieee-floats :nibbles)
  :components
  ((:module :src
            :components
            ((:file "packages")
             (:file "macros"
                    :depends-on ("packages"))
             (:file "generic-functions"
                    :depends-on ("packages"))
             (:file "conditions"
                    :depends-on ("packages"))
             (:file "constants"
                    :depends-on ("packages"))
             (:file "special-variables"
                    :depends-on ("packages"))
             (:file "atom-cache-interface"
                    :depends-on ("packages"))
             (:file "bops"
                    :depends-on ("packages"))
             (:file "classes"
                    :depends-on ("packages"))
             (:file "type-erlang-translatable"
                    :depends-on ("packages"
                                 "classes"))
             (:file "decode"
                    :depends-on ("packages"
                                 "conditions"
                                 "bops"
                                 "generic-functions"
                                 "constants"
                                 "special-variables"
                                 "classes"
                                 "erlang-atom"
                                 "erlang-binary"
                                 "erlang-float"
                                 "erlang-fun"
                                 "erlang-integer"
                                 "erlang-list"
                                 "erlang-pid"
                                 "erlang-port"
                                 "erlang-reference"
                                 "erlang-tuple"))
             (:file "erlang-atom"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "special-variables"
                                 "atom-cache-interface"
                                 "bops"))
             (:file "erlang-binary"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "special-variables"
                                 "classes"
                                 "bops"))
             (:file "erlang-float"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "bops"))
             (:file "erlang-fun"
                    :depends-on ("packages"
                                 "macros"
                                 "constants"
                                 "conditions"
                                 "special-variables"
                                 "classes"
                                 "bops"))
             (:file "erlang-integer"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "bops"))
             (:file "erlang-list"
                    :depends-on ("packages"
                                 "macros"
                                 "constants"
                                 "conditions"
                                 "special-variables"
                                 "bops"))
             (:file "erlang-pid"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "special-variables"
                                 "classes"
                                 "bops"))
             (:file "erlang-port"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "classes"
                                 "bops"))
             (:file "erlang-reference"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "classes"
                                 "bops"))
             (:file "erlang-string"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "special-variables"
                                 "bops"))
             (:file "erlang-tuple"
                    :depends-on ("packages"
                                 "constants"
                                 "conditions"
                                 "classes"
                                 "bops"))
             ))))
