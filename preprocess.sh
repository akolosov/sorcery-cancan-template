#!/bin/sh
echo 
echo "Обработка шаблонов"
find -type f -regextype posix-egrep -iregex "^(.*README.*)|(.*config\.ru)|(.*(Rake|Gem)file)|(.*\.[e]?rb)$" -exec ./preprocess.it {} ";"
[ $? != 0 ] && exit $?

echo
echo "Подготавливаем нужные gem'ы и зависимости"
bundle install
[ $? != 0 ] && exit $?


echo
echo "Создаем базу данных"
rake db:migrate
[ $? != 0 ] && exit $?

echo
echo "Заполняем ее начальными данными"
rake db:seed
[ $? != 0 ] && exit $?

echo
echo "Удаляем упоминание о старом репозитарии с шаблоном и ..."
rm -rf ./.git  
[ $? != 0 ] && exit $?

echo
echo "... создаем новый репозитарий для нового приложения"
git init  
[ $? != 0 ] && exit $?

echo
echo "Добавляем в репозитарий все файлы"
git add .
[ $? != 0 ] && exit $?

echo
echo "Делаем первичный коммит"
git commit -a -m "Initial commit"  
[ $? != 0 ] && exit $?

rm -f ./preprocess*