(in-package #:botanic)

(defun get-prices (filename)
  (remove-if #'(lambda (z)
                 (string= "" (car z)))
             (mapcar #'(lambda (x)
                         (butlast
                          (cdr
                           (mapcar #'(lambda (y)
                                       (string-trim '(#\Space #\Newline #\t) y))
                                   (split-sequence:split-sequence #\| x)))))
                     (remove-if #'(lambda (x)
                                    (string= x ""))
                                (cddr (split-sequence:split-sequence
                                       #\Newline
                                       (alexandria:read-file-into-string (path filename))))))))

;; каталог растений
(defparameter *prices-flower* (get-prices (path "catalog/catalog-flower/prices-flower.txt")))

;; цветущие(+)
(defun blooming ()
  (remove-if-not #'(lambda (x)
                     (string= "+" (cadddr x)))
                 *prices-flower*))

;; до метра(>99)
(defun below_meter ()
  (remove-if #'(lambda (x)
                 (let ((size (parse-integer (cadr x) :junk-allowed t)))
                   (if (null size)
                       t
                       (> size 99))))
             *prices-flower*))

;; от метра(<99)
(defun above_meter ()
  (remove-if #'(lambda (x)
                 (let ((size (parse-integer (cadr x) :junk-allowed t)))
                   (if (null size)
                       t
                       (< size 99))))
             *prices-flower*))



;; каталог кашпо
(defparameter *prices-kashpo*  (get-prices (path "catalog/catalog-kashpo/prices-kashpo.txt")))
