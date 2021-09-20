###
 # @FilePath: /sty_doc/commit.sh
 # @author: Wibus
 # @Date: 2021-09-20 09:07:32
 # @LastEditors: Wibus
 # @LastEditTime: 2021-09-20 09:07:32
 # Coding With IU
### 
time=$(date "+%Y-%m-%d %H:%M:%S")
git add .
git commit -m "${time} 更新文档"
git push
echo "SUCCESS"