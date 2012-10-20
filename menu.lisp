(in-package #:botanic)

(defun menu ()
  `(:menugroups ((:grouplink "/about"
                            :grouptitle "O нас"
                            :groupclass "sub-nav what-we-offer"
                            :menublocks ((:headlink "/about_company"
                                                    :headtitle "О компании"
                                                    :menuitems ((:link "/about_clients"
                                                                       :title "Наши клиенты")
                                                                (:link "/work"
                                                                       :title "Этапы работы")))
                                         (:headlink "/galery"
                                                    :headtitle "Галерея"
                                                    :menuitems ((:link "/inter"
                                                                       :title "Оформление интерьеров")
                                                                (:link "/city"
                                                                       :title "Городское озеленение")
                                                                (:link "/landshaf"
                                                                       :title "Ландшафтный дизайн")
                                                                (:link "/landshafdiz"
                                                                       :title "Услуги по дизайну")
                                                                (:link "/dizint_zimsad"
                                                                       :title "Услуги по зимнему дизайну")
                                                                (:link "/news"
                                                                       :title "Выполненные проекты")))
                                         (:headlink "/catalog"
                                                    :headtitle "Каталог"
                                                    :menuitems ((:link "/catal"
                                                                       :title "Общие сведения")
                                                                (:link "/catr"
                                                                       :title "Каталог растений")
                                                                (:link "/catk"
                                                                       :title "Каталог кашпо")
                                                                (:link "/iskuss"
                                                                       :title "Искусственные растения")))))
                (:grouplink "/catalog_flower"
                            :grouptitle "Растения"
                            :groupclass "sub-nav customer-success"
                            :menublocks ((:headlink "/catr"
                                                    :headtitle "Цветущие растения"
                                                    :menuitems ((:link "/visokie"
                                                                       :title "Высокие")
                                                                (:link "/dekor"
                                                                       :title "Декоративные")
                                                                (:link "/prices_flower"
                                                                       :title "Цены")
                                                                (:link "/rastenie_zimsad"
                                                                       :title "Растения для зимнего сада")
                                                                (:link "/rastenie_offic"
                                                                       :title "Растения для офиса")))
                                         (:headlink "/iskusstv_r"
                                                    :headtitle "Искусственные растения"
                                                    :menuitems ((:link "/iskuss"
                                                                       :title "Общие сведения")
                                                                (:link "/prices_iskusstv_r"
                                                                       :title "Цены")))
                                         (:headlink "/catalog_kashpo"
                                                    :headtitle "Каталог кашпо"
                                                    :menuitems ((:link "/prices_kashpo"
                                                                       :title "Цены")
                                                                (:link "/plastic"
                                                                       :title "Пластик")
                                                                (:link "/metall"
                                                                       :title "Металл")
                                                                (:link "/keramika"
                                                                       :title "Керамика")))))
                (:grouplink "/service"
                            :grouptitle "Услуги"
                            :groupclass "sub-nav customer-success"
                            :menublocks ((:headlink "/ozelenenie"
                                                    :headtitle "Озеленение"
                                                    :menuitems ((:link "/city_ozelenenie"
                                                                       :title "Городское озеленение")
                                                                (:link "/landshaf_city"
                                                                       :title "Ландшафтные работы в городе")
                                                                (:link "/landshaf_village"
                                                                       :title "Ландшафтные работы за городом")
                                                                (:link "/fitodiz"
                                                                       :title "Фитодизайн")
                                                                (:link "/fitodiz_int"
                                                                       :title "Интерьер")
                                                                (:link "/zimsad"
                                                                       :title "Зимний сад")
                                                                (:link "/kompoz_flower"
                                                                       :title "Композиции из цветов")))
                                         (:headlink "/oforml_int"
                                                    :headtitle "Оформление интерьеров"
                                                    :menuitems ((:link "/oforml_offic"
                                                                       :title "Оформление офиса")
                                                                (:link "/oforml_cafe"
                                                                       :title "Оформление кафе")
                                                                (:link "/flower_offic"
                                                                       :title "Цветы для офиса")
                                                                (:link "/rastenie_offic"
                                                                       :title "Растения для офиса")))
                                         (:headlink "/NY"
                                                    :headtitle "Новогоднее оформление офиса"
                                                    :menuitems ((:link "/zimsad"
                                                                       :title "Зимний сад")
                                                                (:link "/oforml_spa"
                                                                       :title "Оформление spa")
                                                                (:link "/oforml_hotel"
                                                                       :title "Оформление Hotel")
                                                                (:link "/zimsad_cottadge"
                                                                       :title "Оформление коттеджей")))))
                (:grouplink "/articles"
                            :grouptitle "Статьи"
                            :groupclass "sub-nav about-echo"
                            :menublocks ((:headlink "/news"
                                                    :headtitle "Новости"
                                                    :menuitems ((:link "/emkosti"
                                                                       :title "Емкости для растений")
                                                                (:link "/history_zimsad"
                                                                       :title "История зимних садов")
                                                                (:link "/dom_offic"
                                                                       :title "Какие выбрать растения?")
                                                                (:link "/spasti_offic"
                                                                       :title "Комнатные растения в офисе")))
                                         (:headlink "/akcii"
                                                    :headtitle "Акции от Botanical.LAB"
                                                    :menuitems ((:link "/teory"
                                                                       :title "Сад в теории")
                                                                (:link "/tehnich_har"
                                                                       :title "Техническое исполнение"))))))))
