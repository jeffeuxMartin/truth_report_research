cd /storage/LabJob/Projects/truth_report_research
git fetch origin
git fetch github
git fetch overleaf
git merge origin/master
git merge github/master
git merge overleaf/master
git add -A
git commit -m \
'merged at '"$(date)"
git push

git fetch overleaf
git fetch origin
git fetch github
git merge overleaf/master
git merge origin/master
git merge github/master
git add -A
git commit -m \
'merged at '"$(date)"
git push
