git fetch origin
git fetch overleaf
git merge overleaf/master
git merge origin/master
git add -A
git commit -m \
'merged at '"$(date)"
git push

git fetch overleaf
git fetch origin
git merge overleaf/master
git merge origin/master
git add -A
git commit -m \
'merged at '"$(date)"
git push
