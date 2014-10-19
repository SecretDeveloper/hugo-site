write-host "Deleting /public"
rmdir ./public -r -force

mkdir ./public

write-host 'git subtree blog into /public'
# Add the blog folder repo as a subtree under the 'public' folder.
git subtree add --prefix public git@github.com:SecretDeveloper/secretdeveloper.github.io.git hugo --squash

write-host 'git pull blog repo into /public'
# pull down the blog repo into folder.
git subtree pull --prefix=public git@github.com:SecretDeveloper/secretdeveloper.github.io.git hugo

write-host 'hugo build into /public'
# publish to 'publish'
./hugo.exe -t purehugo

write-host 'git add, commit, push repo'
# push to repo
git add --all .
git commit -m "publish to blog" 
git push origin master

write-host 'git push /public to blog'
# push to blog repo from /publish
git subtree push --prefix public git@github.com:SecretDeveloper/secretdeveloper.github.io.git hugo --squash
