(in-package #:botanic)


;; 404

(defun page-404 (&optional (title "404 Not Found: извините,страница, которую Вы запросили, не находится в нашей базе данных. Скорее всего вы попали на битую ссылку или опечатались при вводе URL") (content "Страница не найдена"))
  "404")

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


(def/route index ("index")
  (old-page "content/index.htm"))

(def/route about ("about")
  (old-page "content/about-clients.htm"))

(def/route about ("about")
  (old-page "content/work.htm"))

(def/route galery ("galery")
  (old-page "content/inter.htm"))

(def/route galery ("galery")
  (old-page "content/drugie-inter.htm"))

(def/route galery ("galery")
  (old-page "content/city.htm"))

(def/route galery ("galery")
  (old-page "content/drugie-city.htm"))

(def/route galery ("galery")
  (old-page "content/landshaf.htm"))

(def/route galery ("galery")
  (old-page "content/drugie-landshaf.htm"))

(def/route catal ("catal")
  (old-page "content/catr.htm"))

(def/route catal ("catal")
  (old-page "content/catk.htm"))

(def/route catal ("catal")
  (old-page "content/iskuss.htm"))

(def/route serv-price ("serv-price")
  (old-page "content/ozelen-fitodiz.htm"))

(def/route serv-price ("serv-price")
  (old-page "content/prof-uhod.htm"))

(def/route service ("service")
  (old-page "content/ozelenenie.htm"))

(def/route service ("service")
  (old-page "content/fitodiz.htm"))

(def/route service ("service")
  (old-page "content/oforml-int.htm"))

(def/route service ("service")
  (old-page "content/zimsad.htm"))

(def/route service ("service")
  (old-page "content/kompoz-flower.htm"))

(def/route service ("service")
  (old-page "content/NY.htm"))

(def/route service ("service")
  (old-page "content/landshafdiz.htm"))

(def/route service ("service")
  (old-page "content/uhod-room-flower.htm"))

(def/route contacts ("contacts")
  (old-page "content/telephon.htm"))

(def/route contacts ("contacts")
  (old-page "content/zakaz.htm"))

(def/route akcii ("akcii")
  (old-page "content/akcii.htm"))

(def/route articles ("articles")
  (old-page "content/articles.htm"))

(def/route articles ("articles")
  (old-page "content/artizs.htm"))

(def/route articles ("articles")
  (old-page "content/artkrvdo.htm"))

(def/route articles ("articles")
  (old-page "content/artkg.htm"))

(def/route articles ("articles")
  (old-page "content/artkrsor.htm"))

(def/route articles ("articles")
  (old-page "content/artrdzs.htm"))

(def/route articles ("articles")
  (old-page "content/artthzs.htm"))

(def/route articles ("articles")
  (old-page "content/artvrddo.htm"))


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

(restas:mount-submodule -resources- (#:restas.directory-publisher)
  (restas.directory-publisher:*baseurl* '("resources"))
  (restas.directory-publisher:*directory* (path "resources/")))
