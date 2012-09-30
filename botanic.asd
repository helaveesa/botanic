(require 'swank)

(asdf:defsystem #:botanic
  :version      "0.0.2"
  :author       "rigidus <i.am.rigidus@gmail.com>"
  :licence      "GPLv3"
  :description  "site http://rigidus.ru"
  :depends-on   (#:closer-mop
                 #:cl-ppcre
                 #:restas-directory-publisher
                 #:closure-template
                 #:cl-json
                 #:postmodern)
  :serial       t
  :components   ((:static-file "templates.htm")
                 (:static-file2 "templates_service.htm")
                 (:static-file3 "templates_galery.htm")
                 (:static-file4 "templates_nextpage.htm")
                 (:file "defmodule")
                 (:file "render")
                 (:file "routes")
                 (:file "init")))
