write-host "Deleting /public"
rmdir ./public -r -force

mkdir ./public

write-host 'hugo build into /public'
# publish to 'publish'
./hugo.exe -t purehugo

mv ./public/* ../secretdeveloper.github.io/

cd ../secretdeveloper.github.io/

git add --all .
git commit -am "automated post"
git push -u origin master

cd ../hugo-site
