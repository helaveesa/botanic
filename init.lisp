(in-package #:botanic)

(defun menu ()
  (list (list :link "/" :title "Главная")
        (list :link "/about" :title "О нас")
        (list :link "/galery" :title "Галерея")
        (list :link "/catalog/" :title "Каталог")
            (list :link "/catalog_r/" :title "Каталог-растений")
            (list :link "/catalog_k/" :title "Каталог-кашпо")
            (list :link "/iskusstv_r/" :title "Искусственные-растения")
        (list :link "/serv-price/" :title "Услуги-и-цены")
            (list :link "/ozelenenie/" :title "Озеленение")
            (list :link "/fitodiz/" :title "Фитодизайн")
            (list :link "/oforml-int/" :title "Оформление-интерьеров")
            (list :link "/zim-sad/" :title "Зимний-сад")
            (list :link "/kompoz-flower/" :title "Композиции-из-цветов")
            (list :link "/NY/" :title "Новогоднее-оформление-офиса")
            (list :link "/landshaf-diz/" :title "Ландшафтный-дизайн")
            (list :link "/uhod-room-flower/" :title "Уход-за-комнатными-растениями")
            (list :link "/fito-energy/" :title "Фитоэнеретика")
        (list :link "/contacts" :title "Контакты")
        (list :link "/news" :title "Новости")))

;; start
(restas:start '#:botanic #|:hostname "rigidus.ru"|# :port 2000)
(restas:debug-mode-on)
;; (restas:debug-mode-off)
(setf hunchentoot:*catch-errors-p* t)
