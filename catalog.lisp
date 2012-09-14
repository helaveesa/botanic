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





(position-if #'(lambda (x)
                 (
(remove-if #'(lambda (x)
               (string= x ""))
           (cddr (split-sequence:split-sequence
                  #\Newline
                  (alexandria:read-file-into-string (path "catalog/catalog-kashpo/prices-kashpo.txt")))))



(defmacro find-command (str body &optional (replace '(setf line "ℕ")))
  `(when (equal 0 (search ,str line))
     (let ((tail (handler-case (subseq line (+ 1 (length ,str)))
                   (SB-KERNEL:BOUNDING-INDICES-BAD-ERROR () ,str))))
       ,body
       ,replace)))

(defmacro find-directive (directive)
  `(find-command ,directive (setf (getf directives (intern (string-upcase (subseq ,directive 1)) :keyword))
                                  (string-trim '(#\  #\tab #\Newline) tail))))





(let ((strings (split-sequence:split-sequence
                #\NewLine
                (alexandria:read-file-into-string (path "catalog/catalog-kashpo/prices-kashpo.txt"))))
      (sections)
      (directives)  ;; Директивы, например @category
      (br 0))        ;; Счетчик переводов строки для вывода обычного текста
  (remove-if #'(lambda (line)
                 (search "ℕ" line))
             (loop
                :for line :in strings
                :for num  :from 0
                :collect
                (progn
                  ;; Удаляем директиву -*-
                  (when (search "-*-" line)
                    (setf line "ℕ"))
                  ;; Директивы
                  (find-directive "@title")
                  (find-directive "@category")
                  (find-directive "@sort")
                  ;; *
                  (when (ppcre:scan "\\A\\*+\\s+" line)
                    (let ((cnt 1)) ;; Подcчитаем количество звездочек
                      (loop :for item :across line :do
                         (if (char= #\* item)
                             (incf cnt)
                             (return)))
                      (let ((headline (subseq line cnt)))
                        (push (list cnt headline num) sections)
                        (setf line (format nil "ℙ ~A" (list cnt headline num))))))
                  ;; default
                  (setf line
                        (if (not (string= "" line))
                            line
                            (progn
                              (incf br)
                              (if (> br 1)
                                  (progn
                                    (setf br 0)
                                    "<p>")
                                  "</p>"))))
                  (print line)))))
