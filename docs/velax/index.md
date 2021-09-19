---
title: Velax 部件
toc: menu
nav:
    title: Velax 部件
---

## 头部大字设置

头部顶部几个大字的设置，支持HTML书写，比如说：`<span>HELLO WORLD</span>`

## 头部大图设置

头部背景图片，填写URL

## 头部大图模糊

若选择了添加，则会自动添加CSS

```css
#maxer-header .header-content{
    backdrop-filter: blur(10px);
}
```

- 目前已知问题：火狐浏览器不支持（默认不支持）这个选项

## 首页轮播图设置

> 在外观设置——高级设置——首页轮播图中可以配置首页的轮播图

格式：

```json
{"title":"第一篇文章","link":"","cover":"","desc":""},
{"title":"第一篇文章","link":"","cover":"","desc":""}
```

示例：

```json
{"title":"STY —— A Super Typecho Theme","link":"https://iucky.cn", "cover":"https://cdn.jsdelivr.net/gh/ihewro/twenty-one@main/image/things-ada17-blog.png","desc":"在复杂中，保持简洁。 一款精心打磨后的typecho主题。"},
{"title":"Focus——不只是RSS订阅器","link":"","cover":"https://cdn.jsdelivr.net/gh/ihewro/twenty-one@main/image/things-ada17-blog.png","desc":"拒绝信息化的算法推送"}
```

属性介绍：

- title: 文章标题
- link: 文章的地址
- cover: 文章图片地址，比例建议8：3，不要太小，否则显示的不清楚
- desc: 简单描述（不要太长）

!> 最后一个`}`后面不要加上英文逗号

## 头部是否添加半圆图形

就是这样的一个东西

![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210720175836.jpg)

## 头部高度

这里填写数字+单位，如：`55vh`, `20px`等