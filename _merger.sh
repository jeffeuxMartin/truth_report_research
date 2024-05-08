git fetch github
git fetch overleaf
git merge overleaf/master
git merge github/master
git add -A
git commit -m \
'merged at '"$(date)"
git push
