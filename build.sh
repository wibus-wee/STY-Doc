###
 # @FilePath: /sty_doc/build.sh
 # @author: Wibus
 # @Date: 2021-09-19 23:54:14
 # @LastEditors: Wibus
 # @LastEditTime: 2021-09-19 23:56:16
 # Coding With IU
### 
yarn
yarn build
rm -rf html
mkdir html
cp -rf dist/* html/