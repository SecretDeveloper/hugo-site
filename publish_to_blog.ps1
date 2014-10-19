# Add the blog folder repo as a subtree under the 'public' folder.
git subtree add --prefix public git@github.com:SecretDeveloper/secretdeveloper.github.io.git hugo --squash


# pull down the blog repo into folder.
git subtree pull --prefix=public

# publish to 'publish'
./hugo.exe -t purehugo

# push to repo
git add --all .
git commit -m "publish to blog" 
git push origin master

# push to blog repo from /publish
git subtree push --prefix public git@github.com:SecretDeveloper/secretdeveloper.github.io.git hugo --squash
