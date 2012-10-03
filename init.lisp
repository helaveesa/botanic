(in-package #:botanic)

(defun menu ()
  '((:link "/" :title "Главная")
    (:link "/about" :title "О нас")
    (:link "/about-company" :title "О компании")
    (:link "/about-clients" :title "Наши-клиенты")
    (:link "/work" :title "Этапы работы")
    (:link "/galery" :title "Галерея")
    (:link "/inter" :title "Оформление-интерьеров")
    (:link "/oformlint" :title "Услуги по интерьеру")
    (:link "/city" :title "Городское озеленение")
    (:link "/landshaf" :title "Ландшафтный-дизайн")
    (:link "/landshafdiz" :title "Услуги по дизайну")
    (:link "/news" :title "Выполненные проекты")
    (:link "/catalog" :title "Каталог")
    (:link "/catal" :title "Общие сведения")
    (:link "/catr" :title "Каталог растений")
    (:link "/catk" :title "Каталог кашпо")
    (:link "/iskuss" :title "Искусственные растения")
    (:link "/catalog-flower" :title "Растения")
    (:link "/catr" :title "Цветущие растения")
    (:link "/visokie" :title "Высокие")
    (:link "/dekor" :title "Декоративные")
    (:link "/iskusstv-r" :title "Искусственные растения")
    (:link "/catk" :title "Каталог кашпо")
    (:link "/catal" :title "Общие сведения")
    (:link "/prices-kashpo" :title "Цены")
    (:link "/plastic" :title "Пластик")
    (:link "/metall" :title "Металл")
    (:link "/keramika" :title "Керамика")
    (:link "/service" :title "Услуги")
    (:link "/ozelenenie" :title "Озеленение")
    (:link "/fitodiz" :title "Фитодизайн")
    (:link "/zimsad" :title "Зимний сад")
    (:link "/kompoz-flower" :title "Композиции из цветов")
    (:link "/articles" :title "Статьи")
    (:link "/news" :title "Новости")
    (:link "/emkosti" :title "Емкости для растений")
    (:link "/history-zimsad" :title "История зимних садов")
    (:link "/dom-offic" :title "Какие выбрать растения?")
    (:link "/spasti-offic" :title "Комнатные растения в офис")))


;; start
(restas:start '#:botanic :port 2000)
(restas:debug-mode-on)
;; (restas:debug-mode-off)
(setf hunchentoot:*catch-errors-p* t)
