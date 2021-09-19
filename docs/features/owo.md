---
title: OwO表情包
toc: menu
---

只需要修改主题目录下面的`assets/OwO/OwO.json`文件

<Alert type="success">
  群内文件夹中主题表情包文件夹中有一个一键脚本（仅支持macOS/Darwin类）不会使用的请不要用！
</Alert>

## 修改表情

主题内置三个栏目`颜文字`和`阿鲁`和`推特`

直接在原有的代码上面做一些修改即可，比如图片替换，文字替换等。（具体代码含义见下面 ）

## 增加新的表情栏目

```json
"新的表情栏目名称": {
    "name": "表情包文件夹名称",//只有图片表情类型才需要加这一项
    "type": "emoticon/emoji/image",
    "container": [
        {
            "icon": "OωO",
            "text": "Author: DIYgod"
        },
        {
            "icon": "OωO",
            "text": "Author: DIYgod"
        },
    ]
}
```

**评论表情图片存储在主题目录下的`assets/OwO/img`**

表情名称`name`：

- 该项只有当表情类型为图片表情时候才需要添加
- **name的值对应了emotion文件夹下的表情包文件夹名称。如值为`aru`，文件夹名称对应为`aru`。**
- 建议填写英文

表情类别`type`有三种:

- emoticon: 颜文字
- emoji: emoji表情（比如😊😜😒这些图标，typecho的数据库类型默认不支持emoji编码，需要额外修改才能支持！）
- image: 图片表情，只支持.png 后缀的图片

`container`下存储的是表情的具体内容：

- ```
  icon
  ```

  ：表示的表情具体内容：

  - `颜文字`就填具体的颜文字
  - `emoji表情`就填具体的emoji图标
  - `图片表情`填写对应图片的文件名，如`angry.png`，填`angry`

- `text`:指的是鼠标悬停在表情上面显示的提示文字，一般为中文提示