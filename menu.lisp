(in-package #:botanic)

(defun menu ()
  (list :menublocks (list (list :class ""
                                :headlink "/about_company"
                                :headtitle "О компании"
                                :menuitems (list (list :link "/about_clients"
                                                       :title "Наши клиенты")
                                                 (list :link "/work"
                                                       :title "Этапы работы")))
                          (list :class ""
                                :headlink "/galery"
                                :headtitle "Галлерея"
                                :menuitems (list (list :link "/inter"
                                                       :title "Оформление интерьеров")
                                                 (list :link "/city"
                                                       :title "Городское озеленение")
                                                 (list :link "/landshaf"
                                                       :title "Ландшафтный дизайн")
                                                 (list :link "/landshafdiz"
                                                       :title "Услуги по дизайну")
                                                 (list :link "/dizint_zimsad"
                                                       :title "Услуги по зимнему дизайну")
                                                 (list :link "/news"
                                                       :title "Выполненные проекты")))
                          (list :class ""
                                :headlink "/catalog"
                                :headtitle "Каталог"
                                :menuitems (list (list :link "/catal"
                                                       :title "Общие сведения")
                                                 (list :link "/catr"
                                                       :title "Каталог растений")
                                                 (list :link "/catk"
                                                       :title "Каталог кашпо")
                                                 (list :link "/iskuss"
                                                       :title "Искусственные растения")))))
