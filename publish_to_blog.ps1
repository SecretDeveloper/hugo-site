write-host "Deleting /public"
rmdir ./public -r -force

mkdir ./public

write-host 'hugo build into /public'
# publish to 'publish'
./hugo.exe -t tale

#clear the blog folder content.
rmdir ..\secretdeveloper.github.io\about -r -force
rmdir ..\secretdeveloper.github.io\categories -r -force
rmdir ..\secretdeveloper.github.io\css -r -force
rmdir ..\secretdeveloper.github.io\images -r -force
rmdir ..\secretdeveloper.github.io\page -r -force
rmdir ..\secretdeveloper.github.io\post -r -force
rmdir ..\secretdeveloper.github.io\presentations -r -force
rm ..\secretdeveloper.github.io\*.xml
rm ..\secretdeveloper.github.io\*.html

cp .\public\* ..\secretdeveloper.github.io -force -recurse

cd ../secretdeveloper.github.io/

git add --all .
git commit -am "automated post"
git push -u origin master

cd ../hugo-site
