(in-package #:botanic)

(defun menu ()
  ;;(list :menugroups
        ;;(mapcar #'(lambda (menugroup)
                    ;;(list :grouptitle (car menugroup) :grouplink (cadr menugroup) :left (caddr menugroup)
                          ;;:menublocks (mapcar #'(lambda (menublock)
                                                  (list :headtitle (car menublock) :headlink (cadr menublock)
                                                        :menuitems (mapcar #'(lambda (menuitem)
                                                                               (list :title (car menuitem) :link (cadr menuitem)))
                                                                           (caddr menublock))))
                                              ;;(cadddr menugroup))))
                '(("Botanical.LAB"
                   "/about"
                    ("О компании" "/about_company")
                    ("Наши клиенты" "/about_clients")
                    ("Этапы работы" "/work")
                    ("Зеленая страничка" "/greenpage")
                    ("Контакты" "/contacts"))
                  ("Галерея"
                   "/galery"
                    ("Оформление интерьеров" "/inter")
                    ("Городское озеленение" "/city")
                    ("Ландшафтный дизайн" "/landshaf"))
                   ("Каталог"
                    "/catalog"
                     ("Каталог растений" "/catr")
                     ("Каталог кашпо" "/catk")
                     ("Искусственные растения" "/iskuss"))
                  ("Услуги"
                   "/service"
                     ("Озеленение" "/ozelenenie")
                     ("Фитодизайн" "/fitodiz")
                     ("Оформление интерьеров" "/oforml_int")
                     ("Зимний сад" "/zimsad")
                     ("Композиции из цветов" "/kompoz_flower")
                     ("Новогоднее оформление офиса" "/NY")
                     ("Ландшафтный дизайн" "/landshaf")
                     ("Уход за комнатными растениями" "/uhod_room-flower")
                     ("Фитоэнергетика" "/fitoenergy"))
                   ("Статьи"
                    "/articles"
                     ("Емкости для растений" "/emkosti")
                     ("Растения для зимнего сада. Теория" "/teory")
                     ("История зимних садов" "/history_zimsad")
                     ("Технические характеристики зимних садов" "/tehnich_har")
                     ("Какие выбрать растения?" "/dom_offic")
                     ("Какие растения выбрать для офиса?" "/rastenie_offic")
                     ("Комнатные растения спасут офисных работников" "/spasti_offic")
                     ("Новости" "/news")
                     ("Акции" "/akcii")))
