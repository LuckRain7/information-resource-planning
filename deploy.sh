###
 # @Description:  
 # @Author: LuckRain7
 # @Date: 2020-06-03 16:41:49
### 
###
 # @Description:  
 # @Author: LuckRain7
 # @Date: 2020-04-14 15:35:03
 ###
#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# GitHub
git push -f git@github.com:LuckRain7/information-resource-planning.git master:gh-pages

# Gitee
git push -f git@gitee.com:LuckRain/information-resource-planning.git master

cd -