(require 'closer-mop)
(require 'postmodern)
(require 'restas)
(require 'closure-template)
(require 'restas-directory-publisher)
(require 'anaphora)
(require 'cl-base64)


(restas:define-module #:botanic
    (:use #:closer-mop #:cl #:iter #:alexandria #:anaphora #:postmodern)
  (:shadowing-import-from :closer-mop
                          :defclass
                          :defmethod
                          :standard-class
                          :ensure-generic-function
                          :defgeneric
                          :standard-generic-function
                          :class-name))


(in-package #:botanic)

(let ((path '(:RELATIVE "botanic")))
  (setf asdf:*central-registry*
        (remove-duplicates (append asdf:*central-registry*
                                   (list (merge-pathnames
                                          (make-pathname :directory path)
                                          (user-homedir-pathname))))
                           :test #'equal)))



(defparameter *basedir*
  (asdf:component-pathname (asdf:find-system '#:botanic)))

(defun path (relative)
  (merge-pathnames relative *basedir*))

(closure-template:compile-template :common-lisp-backend (path "templates.htm"))
<<<<<<< HEAD
;;(closure-template:compile-template :common-lisp-backend (path "templates_service.htm"))
;;(closure-template:compile-template :common-lisp-backend (path "templates_galery.htm"))
;;(closure-template:compile-template :common-lisp-backend (path "templates_nextpage.htm"))


=======
(closure-template:compile-template :common-lisp-backend (path "templates_service.htm"))
(closure-template:compile-template :common-lisp-backend (path "templates_galery.htm"))
(closure-template:compile-template :common-lisp-backend (path "templates_nextpage.htm"))
>>>>>>> c8a03c76592287d8d265f1b373c04b77e01200c6
