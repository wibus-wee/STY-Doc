---
title: 短代码
toc: menu
---

## 文章中调用 Bilibili 小窗 <Badge>需要额外配置</Badge>

> ~~此服务依赖`保罗API`服务，也就是说，如果 Paul 那边挂了，这个功能就没有了~~ 已脱离保罗 API 依赖
>
> ~~服务详情：https://api.paugram.com/help/bili~~

如果你想要使用此功能，请您前往后台->`外观设置`中找到`开发者设置`->`实验功能`中输入以下内容

```json
{
  "bframe": "false"
}
```

这个选项添加了后会让 Vditor Render 不自动解析哔哩哔哩，随之而他就不会自动把有 bilibili 的链接转化为 iframe，之后继续享用此短代码吧！

<Alert type="error">
没有设置这个的千万不要用！！！不然排版全乱了！！
</Alert>

```md
[bilibili v="" id=""]

[bilibili v="a/b" id="BV1cb4y1k7hJ"]
```

这是调用 bilibili 小窗的短代码 与哔哩哔哩那边引入的有小许不同，这个是一个介绍小块，点击之后会跳转

- 参数：`v`

  类型：`String` 字符串

  说明：选择要填写的是 AV 还是 BV，`默认为BV`

- 参数： `id`

  类型：`String` 字符串

  说明：填写 AV/BV 号，取决于你第一个选项

  举例：`id="BV1cb4y1k7hJ"`

## 文章中调用进度条

```md
[load value=""]

[load value="10"]
```

这是进度条的代码

- 参数：`value`

  类型：`number ` 数字

  举例：10

## 文章中调用表情包

```md
::FOLDER:NAME::

::ARU:aru-3::
```

功能正在建设中，虽然可以用但是很麻烦，不建议使用

后期将会加上相应加入的位置

## 文章中加入调用提示框

```md
[tip type=""][/tip]

[tip type="tip/warning/danger"]content[/tip]
```

这是调用提示框的短代码，一般用于插入文章重点提示，并不适合用于代码提示

- 参数：`type`

  类型：`String` 字符串

  说明：调用窗样式，可选择：`tip`, `warning`, `danger`

  举例：`type="tip"`

## 文章内调用视频播放器

```md
[vplayer pic="" url="" /]

[vplayer pic="https:\/\/gitee.com\/wibus/blog-assets-goo\/raw\/master\/asset-pic\/KPyTCARHBzpxJ46.jpg" url="https:\/\/a.smartont.net:8445\/fs?fid=Szo7J9FX2MCBDjTyetR057eZV4gXEi\/pyngn1uCfocblwOzKPeunuCWBvKkdo\/ZS&filename=%E7%9F%A5%E4%B9%8E%E7%AD%94%E6%A1%88%E5%A5%87%E9%81%87%E5%A4%9C.mp4" /]
```

| 参数 | 类型                  | 备注     |
| :--- | :-------------------- | -------- |
| pic  | string **(optional)** | 预览图   |
| url  | string **(required)** | 视频链接 |

## 部分内容登录可见

为什么增加这样的功能呢？因为有时候一篇文章并不想完全的加密，部分内容由于隐私问题需要加密。该部分内容仅登录用户（如果是个人博客就是仅博主）可见。

在文章中使用

```markdown
[login]需要加密的内容[/login]
```

## 部分内容回复可见

在文章使用使用

```markdown
[hide][/hide]
```

标签包裹住你想要隐藏的内容，游客必须先回复后才能查看隐藏内容。

## 文章中调用收缩框

示例代码：

```
[collapse title="标题" status="false"]一些文字内容[/collapse]

[collapse title="标题"]一些文字内容[/collapse]
```

其中`status`为`false` 表示默认不显示文字内容，为`true`表示默认显示内容。

不写`status` 属性，默认是展开内容的。

## 文章中调用标签卡

示例代码：

```
[tabs]
[tab name="标签页 1" active="true"]内容 1[/tab]
[tab name="标签页 2"]内容 2[/tab]
[/tabs]
```

每个 tab 都必须包括`name`属性，只能有一个 tab 添加`active`属性，表示默认显示该 tab 的内容。

此外 tab 支持更多 css 的属性，比如颜色，字体粗细等：

```markdown
[tab name="标签页 2" color:"#000" font-weight="bold"]高级内容文本示例[/tab]
```

## 文章中调用相册

> type="photos" 此选项无效

```md
[album]
[普通的图片插入，支持 markdown 语法和 html 语法，混合也可以]
[/album]

[album type="photos"]
[普通的图片插入，支持 markdown 语法和 html 语法，混合也可以]
[/album]
```

- 图集：**增加 type="photos" 则 album 下的图片排成一行，并根据图片的长高比自动排列**

## 文章中调用视频

直接在输入框中输入视频的地址即可，一般以`.mp4`结尾的资源地址。

示例：

```markdown
[vplayer url="http://xxx.com/xxx.mp4" pic="http://xxx.com/xxx.png"]
```

- `url`：视频地址
- `pic`：视频背景图片

相关问题：默认的播放器比较简单，复杂需求可以尝试[DPlayer-Typecho](http://github.com/volio/DPlayer-for-typecho)，主题已经内置适配代码。

## 文章中调用文章卡片

```markdown
[post cid="1" /]
[post cid="1" cover="http:\/\/localhost\/build\/usr\/themes\/handsome\/usr\/img\/sj\/6.jpg"/]
```

- `cid`：必填，是文章的唯一编号，在后台的编辑文章的地址可以看到，比如`http://localhost/build/admin/write-post.php?cid=23`,值为 23
- `cover`：可选项，调用文章显示的封面，如果不填则默认显示随机缩略图。

## 文章中调用外链卡片

![](https://https://cdn.my-api.cn/user/w/asset-pic-gitee/20210724220433.jpg)

```
[post url="https:\/\/iucky.cn" title="秉性之松" intro="一个个人博客" cover="http://iucky.cn/img/xxx.jpg" /]
```

- `title`：必填，外链的名称/标题
- `url`：必填，外链的地址（请填写绝对地址，就是浏览器地址栏什么样的就填什么样的）
- `intro`：（可选）外链网站的简介/介绍
- `cover`：（选填）外链网站的介绍图片地址

## 文章中调用高亮提示文本

```markdown
[scode type="share"]这是灰色的短代码框，常用来引用资料什么的[/scode]
[scode type="yellow"]这是黄色的短代码框，常用来做提示，引起读者注意。[/scode]
[scode type="red"]这是红色的短代码框，用于严重警告什么的。[/scode]
[scode type="lblue"]这是浅蓝色的短代码框，用于显示一些信息。[/scode]
[scode type="green"]这是绿色的短代码框，显示一些推荐信息。[/scode]
```

![](https://https://cdn.my-api.cn/user/w/asset-pic-gitee/20210724215721.jpg)

## 文章中调用按钮

STY 支持以下类型的按钮：

- 矩形文字按钮
- 椭圆形文字按钮
- 矩形图标文字按钮

```markdown
[button]矩形按钮文字[/button]

[button color="succees"]矩形按钮文字[/button]

[button type="round" color="success"]椭圆形按钮文字[/button]

[button color="success" icon="glyphicon glyphicon-eur"]图标按钮文字[/button]
```

- `type`：选填，不填默认为矩形按钮。可选值：
  - `round`：椭圆形按钮
- `color`： 选填，不填默认为 success（绿色），可选值：
  - `light`：白色
  - `info`：蓝色
  - `dark`：深色
  - `success`：绿色
  - `black`：黑色
  - `warning`：黄色
  - `primary`：紫色
  - `danger`：红色
- `icon`：选填，不填默认为文字按钮，可用按钮见[图标列表](https://fontawesome.dashgame.com/)
- `url`:选填，填写点击的链接。举例：如果你的链接是`http://www.baidu.com`，请手动将`/`前面加一个反斜杆`\`，即`http:\/\/www.baidu.com`

举例：

```markdown
[button color="danger" icon="fontello fontello-gratipay" url="http:\/\/wpa.qq.com\/msgrd?v=3&uin=1596355173&site=qq&menu=yes"]点击 QQ 咨询购买（√ 推荐）[/button]

[button color="success" icon="glyphicon glyphicon-send" url="mailto:wibus@qq.com"]wibus@qq.com[/button]
```

## 文章中调用第二版按钮

- `url`: 跳转链接

```markdown
[btn url="https://iucky.cn"]秉性之松[/btn]
```

## 文章中调用 colorful-btn

- `type`：按钮样式
  - color
  - hollow
  - blue-parcel
  - generic
  - technological
  - concavoconvex
  - red-parcel
  - pink-parcel
  - rotating
  - expansile
  - ephemeral-shining
  - downfolded
  - upfolded
  - left- -folded
  - right-folded
- `url`：跳转地址

```markdown
[colorful-btn url="跳转地址" type="color"]内容[/colorful-btn]
```

## 文章中调用多彩 Badge

<span class="default-badge">需要额外配置</span>
<span class="default-badge default-badge-dark">需要额外配置</span>
<span class="default-badge default-badge-info">需要额外配置</span>
<span class="default-badge default-badge-primary">需要额外配置</span>
<span class="default-badge default-badge-danger">需要额外配置</span>
<span class="default-badge default-badge-success">需要额外配置</span>
<span class="default-badge default-badge-warning">需要额外配置</span>

```markdown
[badge]默认白色文字[/badge]
[badge type="primary"]紫色文字[/badge]
[badge type="info"]蓝色文字[/badge]
[badge type="warning"]黄色文字[/badge]
[badge type="danger"]红色文字[/badge]
[badge type="success"]绿色文字[/badge]
[badge type="dark"]黑色文字[/badge]
```

## 文章中调用计划表

```markdown
[goal title="2021 的小目标"]
[item check="true"] 每天早睡 [/item]
[item check="false"] 每天早起 [/item]
[item progress="50%"] 阅读 10 本书 [/item]
[item start="2021-01-02" end="2021-10-1"] 每天锻炼 30 分钟 [/item]
[/goal]
```

计划表中包含了三种类型的任务：

- check 类型，该类型任务只有两种状态，完成和未完成
- progress，该类型任务可以显示任务执行的进度，需要手动填写进度
- start、end，该类型任务设置一个起始时间和终止时间，进度会根据当前时间自动更新进度
  - 时间格式：**必须是正确的时间格式**，比如`2021-01-02 12:00` ，也可以只写日期`2021-01-02`

## 文章中调用时间线

```md
[timeline title="2020 大事记" start="梦开始的地方" end="新的一年开始"]
[item date="2020-1-20"] 武汉封城，疫情让一起变得慌乱起来 [/item]
[item date="2020-3-20"] 开始远程办公，慢慢有序起来[/item]
[item]生活变得好起来了[/item]
[item date="2020-10-1"] 国庆节去哈尔滨旅行，和老同学见面[/item]
[/timeline]
```

timeline 属性列表：

- `random`，可选项，默认为 true，可选值为 true、false，true 表示时间线每一条会使用随机的色彩

item 属性列表：

- `date`：可选项，默认不显示时间，可选值：
  - 一个日期文字，实际上可以填写任何类型文字（不要太长）

<style>
  .default-badge {
    display: inline-block;
    margin-left: 6px;
    padding: 1px 7px;
    /* color: #fff; */
    font-size: 13px;
    line-height: 20px;
    text-shadow: 0 -1px 0 rgb(0 0 0 / 10%);
    box-shadow: 0 6px 16px -2px rgb(0 0 0 / 6%);
    border-radius: 1px;
    vertical-align: top;
}
[class*="default-badge-"]{
    color: #fff;
}
.default-badge-info{
    background: #4569d4;
}
.default-badge-primary{
    background: purple;
}
.default-badge-danger{
    background: rgb(184, 13, 13)
}
.default-badge-success{
    background: rgb(6, 110, 6)
}
.default-badge-dark{
    background: #222222
}
.default-badge-warning{
    background: rgb(218, 218, 0);
    color: #000;
}
</style>
