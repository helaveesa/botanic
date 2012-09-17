(in-package #:botanic)


;; 404

(defun page-404 (&optional (title "404 Not Found") (content "Страница не найдена"))
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
  (old-page "content/about/about-company.htm"))
(def/route about ("about")
  (old-page "content/about/about-clients.htm"))
(def/route about ("about")
  (old-page "content/about/work.htm"))


(def/route galery ("galery")
  (old-page "content/galery/inter.htm"))
(def/route galery ("galery")
  (old-page "content/galery/drugie-inter.htm"))
(def/route galery ("galery")
  (old-page "content/galery/city.htm"))
(def/route galery ("galery")
  (old-page "content/galery/drugie-city.htm"))
(def/route galery ("galery")
  (old-page "content/galery/landshaf.htm"))
(def/route galery ("galery")
  (old-page "content/galery/drugie-landshaf.htm"))


(def/route cataloggg ("cataloggg")
  (old-page "content/cataloggg/cat-r.htm"))
(def/route cataloggg ("cataloggg")
  (old-page "content/cataloggg/cat-k.htm"))
(def/route cataloggg ("cataloggg")
  (old-page "content/cataloggg/iskuss.htm"))

(def/route serv-price ("serv-price")
  (old-page "content/serv-price/ozelen-fitodiz.htm"))
(def/route serv-price ("serv-price")
  (old-page "content/serv-price/prof-uhod.htm"))

(def/route service ("service")
  (old-page "content/service/ozelenenie.htm"))
(def/route service ("service")
  (old-page "content/service/fitodiz.htm"))
(def/route service ("service")
  (old-page "content/service/oforml-int.htm"))
(def/route service ("service")
  (old-page "content/service/zim-sad.htm"))
(def/route service ("service")
  (old-page "content/service/kompoz-flower.htm"))
(def/route service ("service")
  (old-page "content/service/NY.htm"))
(def/route service ("service")
  (old-page "content/service/landshaf-diz.htm"))
(def/route service ("service")
  (old-page "content/service/uhod-room-flower.htm"))

(def/route contacts ("contacts")
  (old-page "content/contacts/telephon.htm"))
(def/route contacts ("contacts")
  (old-page "content/contacts/zakaz.htm"))

(def/route akcii ("akcii")
  (old-page "content/akcii.htm"))

(def/route articles ("articles")
  (old-page "content/articles.htm"))
(def/route articles ("articles")
  (old-page "content/articles/articles-istoriya-zimnih-sadov.htm"))
(def/route articles ("articles")
  (old-page "content/articles/articles-kakie-rasteniya-vybrat-dlya-ofisa.htm"))
(def/route articles ("articles")
  (old-page "content/articles/articles-kashpo-gorshki.htm"))
(def/route articles ("articles")
  (old-page "content/articles/articles-komnatnye-rasteniya-spasut-ofisnyh-rabotnikov.htm"))
(def/route articles ("articles")
  (old-page "content/articles/articles-rasteniya-dlya-zimnego-sada.htm"))
(def/route articles ("articles")
  (old-page "content/articles/articles-tehnicheskie-harakteristiki-zimnih-sadov.htm"))
(def/route articles ("articles")
  (old-page "content/articles/articles-vybor-rasteniy-dlya-doma-i-ofisa.htm"))




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
