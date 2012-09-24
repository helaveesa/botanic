(in-package #:botanic)

(defun menu ()
  '((:link "/" :title "Главная")
    (:link "/about" :title "Компания")
    (:link "/about-company" :title "О нас")
    (:link "/about-clients" :title "Наши-клиенты")
    (:link "/work" :title "Как-мы-работаем")
    (:link "/galery" :title "Галерея")
    (:link "/inter" :title "Оформление-интерьеров")
    (:link "/drugie-inter" :title "Другие-клиенты")
    (:link "/city" :title "Городское-озеленение")
    (:link "/drugie-city" :title "Другие-клиенты")
    (:link "/landshaf" :title "Ландшафтный-дизайн")
    (:link "/drugie-landshaf" :title "Другие-клиенты")
    (:link "/serv-price" :title "Услуги-и-цены")
    (:link "/ozelen-fitodiz" :title "Озеленение-и-фитодизайн-интерьеров")
    (:link "/prof-uhod/" :title "Профессиональный-уход-за-комнатными-растениями")
    (:link "/contacts" :title "Конакты")
    (:link "/telephon" :title "Телефоны-компании-Botanical.LAB-в-Санкт-Петербурге")
    (:link "/zakaz" :title "ЗАКАЗ на РАСТЕНИЯ только по Санкт-Петербургу")
    (:link "/news" :title "Новости")
    (:link "/akcii" :title "Акции")
    (:link "/mapsite" :title "Карта сайта")))





;; start
(restas:start '#:botanic :port 2000)
(restas:debug-mode-on)
;; (restas:debug-mode-off)
(setf hunchentoot:*catch-errors-p* t)
