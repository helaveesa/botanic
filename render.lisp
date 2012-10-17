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
                                              :section1 section1
                                              :textfeature textfeature
                                              :featuretitle featuretitle
                                              :link2 link2
                                              :section2 section2
                                              :text3 text3
                                              :title3 title3
                                              :link3 link3
                                              :section3 section3
                                              :text4 text4
                                              :title4 title4
                                              :link4 link4
                                              :section4 section4
                                              :stat (tpl:stat)))))))




