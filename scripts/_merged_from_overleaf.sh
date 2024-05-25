#!/bin/bash

if [ -d /storage/LabJob/Projects/truth_report_research ]; then
cd /storage/LabJob/Projects/truth_report_research
else
cd /home/jeffeuxmlta2020/truth_report_research
fi

git add -A
git commit -m \
'add local modification at '"$(date)"
git push

git fetch origin
# git fetch overleaf
if ( timeout 3 git fetch overleaf ) ; then
    # echo "fetched origin"
    :
else
    echo "failed to fetch overleaf"
    exit 97
fi
git pull overleaf master --rebase
git merge overleaf/master
# git merge origin/master
git add -A
git commit -m \
'merged from Overleaf at '"$(date)"
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
