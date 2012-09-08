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

(get-prices "catalog/prices.txt")

;; цветущие
(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog/prices.txt"))

;; до метра
(remove-if #'(lambda (x)
            (let ((size (parse-integer (cadr x) :junk-allowed t)))
              (if (null size)
                  t
                  (> size 99))))
           (get-prices "catalog/prices.txt"))


;; от метра
(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (< size 99))))
           (get-prices "catalog/prices.txt"))


