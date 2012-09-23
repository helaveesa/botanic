(in-package #:botanic)


;; 404

(defun page-404 (&optional (title "404 Not Found") (content "Страница не найдена"))
  "404:  извините,страница, которую Вы запросили, не находится в нашей базе данных. Скорее всего вы попали на битую ссылку или опечатались при вводе URL")

(restas:define-route not-found-route ("*any")
  (restas:abort-route-handler
   (page-404)
   :return-code hunchentoot:+http-not-found+
   :content-type "text/html"))

(defun old-page (filename)
  (tpl:root (list :content (alexandria:read-file-into-string filename))))

;; main

(restas:define-route main ("/")
  (old-page "content/index.htm"))


;; plan file pages

(defmacro def/route (name param &body body)
  `(progn
     (restas:define-route ,name ,param
       ,@body)
     (restas:define-route
         ,(intern (concatenate 'string (symbol-name name) "/"))
         ,(cons (concatenate 'string (car param) "/") (cdr param))
       ,@body)))


(def/route about ("about")
  (old-page "content/about.htm"))

(def/route contacts ("contacts")
  (old-page "content/contacts.htm"))


;; submodules

(restas:mount-submodule -css- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("css"))
  (restas.directory-publisher:*directory* (path "css/")))

(restas:mount-submodule -js- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("js"))
  (restas.directory-publisher:*directory* (path "js/")))

(restas:mount-submodule -img- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("img"))
  (restas.directory-publisher:*directory* (path "img/")))

(restas:mount-submodule -about- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("about"))
  (restas.directory-publisher:*directory* (path "about/")))

(restas:mount-submodule -banner- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("banner"))
  (restas.directory-publisher:*directory* (path "banner/")))

(restas:mount-submodule -catalog- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("catalog"))
  (restas.directory-publisher:*directory* (path "catalog/")))

(restas:mount-submodule -cityozelen- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("cityozelen"))
  (restas.directory-publisher:*directory* (path "cityozelen/")))

(restas:mount-submodule -floweroffic- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("floweroffic"))
  (restas.directory-publisher:*directory* (path "floweroffic/")))

(restas:mount-submodule -gallery- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("gallery"))
  (restas.directory-publisher:*directory* (path "gallery/")))

(restas:mount-submodule -gif- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("gif"))
  (restas.directory-publisher:*directory* (path "gif/")))

(restas:mount-submodule -kashpo- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("kashpo"))
  (restas.directory-publisher:*directory* (path "kashpo/")))

(restas:mount-submodule -kompoziciya- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("kompoziciya"))
  (restas.directory-publisher:*directory* (path "kompoziciya/")))

(restas:mount-submodule -minipick- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("minipick"))
  (restas.directory-publisher:*directory* (path "minipick/")))

(restas:mount-submodule -NY- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("NY"))
  (restas.directory-publisher:*directory* (path "NY/")))

(restas:mount-submodule -oformlenie- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("oformlenie"))
  (restas.directory-publisher:*directory* (path "oformlenie/")))

(restas:mount-submodule -ozelenoffic- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("ozelenoffic"))
  (restas.directory-publisher:*directory* (path "ozelenoffic/")))

(restas:mount-submodule -picindex- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("picindex"))
  (restas.directory-publisher:*directory* (path "picindex/")))

(restas:mount-submodule -rastoffic- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("rastoffic"))
  (restas.directory-publisher:*directory* (path "rastoffic/")))

(restas:mount-submodule -uhodroomfl- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("uhodroomfl"))
  (restas.directory-publisher:*directory* (path "uhodroomfl/")))

(restas:mount-submodule -zimsad- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("zimsad"))
  (restas.directory-publisher:*directory* (path "zimsad/")))

(restas:mount-submodule -resources- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("resources"))
  (restas.directory-publisher:*directory* (path "resources/")))
