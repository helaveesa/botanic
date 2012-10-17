(in-package #:botanic)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; default-render
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defclass botanic-render () ())

(defparameter *default-render-method* (make-instance 'botanic-render))


 (defmethod restas:render-object ((designer botanic-render) (data list))
   (destructuring-bind (headtitle navpoints content) data
     (tpl:root (list :headtitle headtitle
                     :content (tpl:base (list :navpoints navpoints
                                              :content content
                                              :banner banner
                                              :main main
                                              :base base
                                              :article article
                                              :industry industry
                                              :section1 section1
                                              :textfeature textfeature
                                              :featuretitle featuretitle
                                              :link2 link2
                                              :stat (tpl:stat)))))))




