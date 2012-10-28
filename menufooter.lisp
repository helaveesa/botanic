(in-package #:botanic)

(defun menu ()
  (list :menugroups
        (mapcar #'(lambda (menugroup)
                    (list :grouptitle (car menugroup) :grouplink (cadr menugroup) :left (caddr menugroup)
                          :menublocks (mapcar #'(lambda (menublock)
                                                  (list :headtitle (car menublock) :headlink (cadr menublock)
                                                        :menuitems (mapcar #'(lambda (menuitem)
                                                                               (list :title (car menuitem) :link (cadr menuitem)))
                                                                           (caddr menublock))))
                                              (cadddr menugroup))))
