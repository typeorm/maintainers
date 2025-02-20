git checkout -b minutes-$(date +'%Y-%m-%d') || git checkout minutes-$(date +'%Y-%m-%d')
git reset --hard origin/main
git fetch origin
git rebase origin/main
cp template.md $(date +"%Y-%m-%d").md
dos2unix $(date +"%Y-%m-%d").md
git branch | grep \*
