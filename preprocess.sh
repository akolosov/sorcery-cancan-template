#!/bin/sh
find -type f -regextype posix-egrep -iregex "^(.*README.*)|(.*config\.ru)|(.*(Rake|Gem)file)|(.*\.[e]?rb)$" -exec ./preprocess.it {} ";"
rm -f ./preprocess*