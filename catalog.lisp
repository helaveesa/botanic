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

(get-prices "catalog-flower/prices-flower.txt")

;; каталог растений
;; цветущие(+)
(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog/prices.txt"))

;; до метра(>99)
(remove-if #'(lambda (x)
            (let ((size (parse-integer (cadr x) :junk-allowed t)))
              (if (null size)
                  t
                  (> size 99))))
           (get-prices "catalog/prices.txt"))


;; от метра(<99)
(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (< size 99))))
           (get-prices "catalog/prices.txt"))


(get-prices "catalog-kashpo/prices-kashpo.txt")

;; катало кашпо
;; пластик (+)
(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))
;; модель(DELTA)(+)
(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 15*26)
                     (= size 30*56)
                     (= size 40*75))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))


;; модель(DELTA20)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 40*15*18))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель(CUBICO)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 22*22*41)
                     (= size 30*30*56)
                     (= size 40*40*75)
                     (= size 50*50*95)))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель(MINI-CUBI)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 9*9*18))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель(MAXI-CUBI)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 14*14*26))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель(CARARO)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 75*30*43))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель(CLASSICO)(+)
(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 21*20)
                     (= size 28*26)
                     (= size 35*33)
                     (= size 43*40)
                     (= size 50*47)
                     (= size 60*56)
                     (= size 70*65))))
(get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель(QUADRO)(+)
(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 21*21*20)
                     (= size 28*28*26)
                     (= size 35*35*33)
                     (= size 43*43*40)
                     (= size 50*50*47)))))
                     (get-prices "catalog-kashpo/prices-kashpo.txt"))


;; металл
;; модель (TREND НАСТОЛЬНЫЙ)(+)
(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 24*13)
                     (= size 28*15)
                     (= size 32*17))))
(get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель (TREND ЦИЛИНДР)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 30*30)
                     (= size 40*38)
                     (= size 50*41)
                     (= size 60*50))))
(get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель (TREND КОМПАКТА)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 20*12))))
                     (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель (TREND НАСТОЛЬНЫЙ КОЛОННА)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 14*20)
                     (= size 18*20)
                     (= size 22*20))))
                     (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель (TREND ПИРАМИДА)(+)

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 30*48))))
                     (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; керамика
;; модель КАШПО COUPLE БАКЛАЖАН

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 65*36*50))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель КАШПО COUPLE БЕЛЫЙ

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 37*34)
                     (= size 50*47)
                     (= size 70*60))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель КАШПО COUPLE КОРИЧНЕВЫЙ

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 37*34)
                     (= size 50*47)
                     (= size 70*60))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель КАШПО BOWL СЕРЫЙ

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 48*28)
                     (= size 56*34)
                     (= size 65*42)))))
                     (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель КАШПО COUPLE СЕРЫЙ

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 42*35)
                     (= size 50*46)
                     (= size 60*52))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель КАШПО ELEGANT ЧЕРНЫЙ

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 32*48)
                     (= size 50*63))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))

;; модель КАШПО PARTNER ЧЕРНЫЙ

(remove-if-not #'(lambda (x)
                   (string= "+" (cadddr x)))
               (get-prices "catalog-kashpo/prices-kashpo.txt"))

(remove-if #'(lambda (x)
               (let ((size (parse-integer (cadr x) :junk-allowed t)))
                 (if (null size)
                     t
                     (= size 37*82))))
           (get-prices "catalog-kashpo/prices-kashpo.txt"))



(get-prices "catalog-iskusstv-r/prices-iskusstv-r.txt")
;; искусственные растения


