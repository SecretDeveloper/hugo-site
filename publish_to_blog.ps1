write-host "Deleting /public"
rmdir ./public -r -force

mkdir ./public

write-host 'hugo build into /public'
# publish to 'publish'
./hugo.exe

#clear the blog folder content.
get-childitem ..\secretdeveloper.github.io\ -exclude ".git*" | remove-item -Recurse -ErrorAction Ignore

cp .\public\* ..\secretdeveloper.github.io -force -recurse

cd ../secretdeveloper.github.io/

git add --all .
git commit -am "automated post"
git push -u origin master

cd ../hugo-site
