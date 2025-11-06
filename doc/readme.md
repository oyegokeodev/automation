git init
git remote add origin https://github.com/oyegokeodev/automation.git
git remote -v
<!-- origin  https://github.com/oyegokeodev/automation.git (fetch)
origin  https://github.com/oyegokeodev/automation.git (push) -->

git branch -M develop
git pull origin develop --allow-unrelated-histories
git push -u origin develop