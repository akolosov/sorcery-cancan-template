{programName}
=============

Это программа-шаблон для использования Sorcery/CanCan для авторизации пользователей и управления правами.
Базируется на RubyOnRails v3.2, но в 3.0 и 3.1 тоже работает.

# Установка и использование

    $ git clone git://github.com/akolosov/sorcery-cancan-template.git ~/NewProjects/NewProjectName  #  где NewProjectName - имя Вашего нового проекта
    $ cd ~/Projects/NewProjectName
    $ vi ./preprocess.it  # Меняем строки "SorceryCancanTemplate" на "NewProjectName" и "sorcery_cancan_template" на "new_project_name". Сохраняем и выходим из vi.
    $ ./preprocess.sh  # Производим подготовку шаблона
    $ rails s  # Проверяем работоспособность приложения Rails


Для входа администратором и пользователем используем соответственно:

    E-Mail: admin@test.com, Username: admin, ID: 1, Password: admin
    E-Mail: user@test.com, Username: user, ID: 2, Password: user
    E-Mail: test@test.com, Username: test, ID: 3, Password: user


# License

(C)opyLeft & (C)odeRight Alexey Kolosov aka mr.huNTer <alexey.kolosov@gmail.com>

"{programName}" released without warranty under the terms of the Artistic License 2.0
http://www.opensource.org/licenses/artistic-license-2.0


