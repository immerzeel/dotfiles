#!/bin/bash -e

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' > tempfile

while read -u 3 path_key path
do
    url_key=$(echo $path_key | sed 's/\.path/.url/')
    url=$(git config -f .gitmodules --get "$url_key")

    read -p "Are you sure you want to DELETE and re-initialize '$path' as a new submodule? " yn
    case $yn in
        [Yy]* ) rm -rf $path; git submodule add $url $path; echo "$path has been initialized";;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac

done 3<tempfile

rm tempfile
