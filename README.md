{programName}
=============

Это программа-шаблон для использования Sorcery/CanCan для авторизации пользователей и управления правами.
Базируется на RubyOnRails v3.2, но в 3.0 и 3.1 тоже работает.

# Установка и использование

    $ git clone git://github.com/akolosov/sorcery-cancan-template.git ~/NewProjects/NewProjectName  #  где NewProjectName - имя Вашего нового проекта
    $ cd ~/Projects/NewProjectName
    $ vi ./preprocess.it  # Меняем строки "SorceryCancanTemplate" на "NewProjectName" и "sorcery_cancan_template" на "new_project_name". Сохраняем и выходим из vi.
    $ ./preprocess.sh  # Производим подготовку шаблона
    $ bundle install  # Подготавливаем нужные gem'ы и зависимости
    $ rm -rf ./.git  # Удаляем упоминание о старом репозитарии с шаблоном и ...
    $ git init  # ... создаем новый репозитарий для нового приложения
    $ git add .  # Добавляем в репозитарий все файлы
    $ git commit -a -m "Initial commit"  # Делаем первичный коммит
    $ ..
    $ rake db:migrate  # Создаем базу данных
    $ rake db:seed  # Заполняем ее начальными данными
    $ rails s  # Проверяем работоспособность сервера Rails


Для входа администратором и пользователем используем соответственно:

    E-Mail: admin@test.com, Password: admin
    E-Mail: user@test.com, Password: user


# License

(C)opyLeft & (C)odeRight Alexey Kolosov aka mr.huNTer <alexey.kolosov@gmail.com>

"{programName}" released without warranty under the terms of the Artistic License 2.0
http://www.opensource.org/licenses/artistic-license-2.0


