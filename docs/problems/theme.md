---
title: 主题功能相关
toc: menu
---

## 文章发布后，有一部分内容丢失了？

一般是因为你的文章中包含了emoji，typecho默认不支持emoji，导致emoji后面的文字丢失了，可以百度一下 typecho 支持emoji有教程的 （https://get233.com/archives/show-emoji-in-typecho.html）

## 不解析表格？不解析HTML？

- typecho 原生markdown解析器非常弱，可以解析HTML，但是无法解析表格。可以配合以下插件使用[typecho-plugin-Parsedown](https://github.com/kokororin/typecho-plugin-Parsedown) 或者 [typecho-markdown](https://github.com/mrgeneralgoo/typecho-markdown)(包含更多markdown语法)

<Alert type="info">
插件安装后请注意文件夹命名要求。安装插件后，无需任何设置，自动替换前台文章解析，支持解析表格和HTML代码。
</Alert>

- typecho开发版本是支持解析表格的，可以使用开发版本
- 或者使用STY设置里面的vditor.js 接管前台的所有解析，包括html和表格语法等等
- typecho 1.1版本的原生markdown解析器不支持解析HTML代码，必须使用特权模式才可以解析HTML代码，示例如下：

```html
!!!
// 你的HTML代码
!!!
```

## 注册在哪里？/怎么开启注册功能？

- 注册功能是typecho 自带支持的，具体开启方式：后台——设置——基本——是否允许注册——选择允许
- 开启之后，在typecho的后台登录页面（一般是xxx.com/admin），未登录的时候，页面中会有“注册的入口”

## MathJax 在某些文本解析有问题

可能原因如下：

- 如果使用了markdownparse 这类第三方的markdown解析器，会把`=` 错误解析掉的，需要需要加两个反斜杠，即`\\=` 。
- `$$`结束符号的前一行不能是空行
- 第三方的插件中如果有mathjax功能，需要关闭，或者在主题增强功能里面关掉主题内置的mathjax，否则重复mathjax解析会带来问题。