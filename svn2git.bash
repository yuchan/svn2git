#!/bin/bash

myproject="" #project name
mysvn="" #abosolute path to svn command
mysvnrepo="" #absolute path to the root of svn server
mytrunk="" #relative path to the trunk

${mysvn} checkout ${mysvnrepo}${mytrunk} tmptrunk

cd tmptrunk

${mysvn} log ^/${myproject}/ --xml | grep "^<author" | sort -u | \
    perl -pe 's/<author>(.*?)<\/author>/$1 = /' > users.txt

git svn clone ${mysvnrepo} --authors-file=users.txt --no-metadata -s ${myproject}

cd ${myproject}

git for-each-ref refs/remotes/tags | cut -d / -f 4- | grep -v @ | while read tagname; do git tag "$tagname" "tags/$tagname"; git branch -r -d "tags/$tagname"; done

git for-each-ref refs/remotes | cut -d / -f 3- | grep -v @ | while read branchname; do git branch "$branchname" "refs/remotes/$branchname"; git branch -r -d "$branchname"; done

../../committime.pl
cd ../.. && mv tmptrunk/${myproject} ./ && rm -rf tmptrunk

echo "${myproject} can be managed under git from now on! Enjoy Git-Flow!"
