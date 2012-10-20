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
                                                       :title "Искусственные растения")))

                          (list :class ""
                                :headlink "/catr"
                                :headtitle "Цветущие растения"
                                :menuitems (list (list :link "/visokie"
                                                       :title "Высокие")
                                                 (list :link "/dekor"
                                                       :title "Декоративные")
                                                 (list :link "/prices_flower"
                                                       :title "Цены")
                                                 (list :link "/rastenie_zimsad"
                                                       :title "Растения для зимнего сада")
                                                 (list :link "/rastenie_offic"
                                                       :title "Растения для офиса")))
                          (list :class ""
                                :headlink "/iskusstv_r"
                                :headtitle "Искусственные растения"
                                :menuitems (list (list :link "/iskuss"
                                                       :title "Общие сведения")
                                                 (list :link "/prices_iskusstv_r"
                                                       :title "Цены")))
                          (list :class ""
                                :headlink "/catalog_kashpo"
                                :headtitle "Каталог кашпо"
                                :menuitems (list (list :link "/prices_kashpo"
                                                       :title "Цены")
                                                 (list :link "/plastic"
                                                       :title "Пластик")
                                                 (list :link "/metall"
                                                       :title "Металл")
                                                 (list :link "/keramika"
                                                       :title "Керамика")))
                          (list :class ""
                                :headlink "/ozelenenie"
                                :headtitle "Озеленение"
                                :menuitems (list (list :link "/city_ozelenenie"
                                                       :title "Городское озеленение")
                                                 (list :link "/landshaf_city"
                                                       :title "Ландшафтные работы в городе")
                                                 (list :link "/landshaf_village"
                                                       :title "Ландшафтные работы за городом")
                                                 (list :link "/fitodiz"
                                                       :title "Фитодизайн")
                                                 (list :link "/fitodiz_int"
                                                       :title "Интерьер")
                                                 (list :link "/zimsad"
                                                       :title "Зимний сад")
                                                 (list :link "/kompoz_flower"
                                                       :title "Композиции из цветов")))
                          (list :class ""
                                :headlink "/oforml_int"
                                :headtitle "Оформление интерьеров"
                                :menuitems (list (list :link "/oforml_offic"
                                                       :title "Оформление офиса")
                                                 (list :link "/oforml_cafe"
                                                       :title "Оформление кафе")
                                                 (list :link "/flower_offic"
                                                       :title "Цветы для офиса")
                                                 (list :link "/rastenie_offic"
                                                       :title "Растения для офиса")))
                          (list :class ""
                                :headlink "/NY"
                                :headtitle "Новогоднее оформление офиса"
                                :menuitems (list (list :link "/zimsad"
                                                       :title "Зимний сад")
                                                 (list :link "/oforml_spa"
                                                       :title "Оформление spa")
                                                 (list :link "/oforml_hotel"
                                                       :title "Оформление Hotel")
                                                 (list :link "/zimsad_cottadge"
                                                       :title "Оформление коттеджей")))
                          (list :class ""
                                :headlink "/news"
                                :headtitle "Новости"
                                :menuitems (list (list :link "/emkosti"
                                                       :title "Емкости для растений")
                                                 (list :link "/history_zimsad"
                                                       :title "История зимних садов")
                                                 (list :link "/dom_offic"
                                                       :title "Какие выбрать растения?")
                                                 (list :link "/spasti_offic"
                                                       :title "Комнатные растения в офисе")))

                          (list :class ""
                                :headlink "/akcii"
                                :headtitle "Акции от Botanical.LAB"
                                :menuitems (list (list :link "/teory"
                                                       :title "Сад в теории")
                                                 (list :link "/tehnich_har"
                                                       :title "Техническое исполнение")))))

