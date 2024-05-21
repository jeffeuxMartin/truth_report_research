Set-Location C:\Users\ChienChengChen\Desktop\truth_report_research

git add -A
git commit -m ('add local modification at ' + (Get-Date).ToString())
git push

git fetch origin
git fetch overleaf
git pull overleaf master --rebase
git merge overleaf/master
# git merge origin/master
git add -A
git commit -m ('merged from Overleaf at ' + (Get-Date).ToString())
git push

# git fetch overleaf
# git fetch origin
# git merge overleaf/master
# git merge origin/master
# git add -A
# git commit -m \
# 'merged at '"$(date)"
# git push

git fetch overleaf
git fetch github
git fetch origin
