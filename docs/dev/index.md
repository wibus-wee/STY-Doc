---
title: 实验功能
toc: menu
nav:
    title: 实验功能
    order: 4
---

实验功能是用来方便快捷地启动与关闭一些功能的，通过此选项可以控制一些如Vditor Render等设置


## Vditor Render 中 针对`bilibili`解析为iframe功能

请在外观设置->开发者设置->实验功能中加入以下代码：

```json
{
  "bframe": "false", //这样就能关闭此功能了
}
```

需要注意的是，目前只能控制bframe，不能控制其他的解析frame

> 如果你不是用Vditor Render，此选项设置无效