---
title: 开发指南
toc: menu
nav:
    title: 开发指南
    order: 5
---

# 开发指南

此节将带你了解STY的主题策略，并且如何写出一个符合STY规范*的STY部件. `STY规范`指一个STY主题部件必须要做到的要求

相对于Typecho主题的开发，`STY部件`的开发可以说和Typecho主题开发`大同小异`，但是STY开发会`更加便捷`。不需要单独写函数来实现功能（STY内部`全部内置`）不需要`优化`head中的`SEO`，当然部件的开发的SEO只能靠你自己了

<img src="https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921072345.png" style="zoom: 50%">

这是`RText`的header文件，如果你会看的话，你应该能看出我想说啥了。不说，哎我就是玩，立马开始写指南吧（（

## 0 STY规范

STY规范听起来很**高大上**，但其实并不哈哈哈，简单来讲就是你的部件必须要支持以下的东西（或者说必须要有以下的文件

- 头部部件
- 轮播图部件
- 文章列表部件
- 底部部件
- 文章/页面详情
- 归档页面

```tree
.
├── velax_archieve.php -- 归档
├── velax_carousel.php -- 轮播图
├── velax_comment.php -- 评论区
├── velax_footer.php -- 底部
├── velax_headnav.php -- 头部
├── velax_list.php -- 文章展示
├── velax_page.php -- 页面
└── velax_post.php -- 文章
```

这个是STY部件中的`Velax部件`，如果你不知道Velax部件处在整个主题的地方的话，那我告诉你（相对路径`themes/velax`

## 1  完成基本页面

要写一份STY部件，首先你必须要做好一个`基本页面`，最好先用`HTML`写好，等下写部件就只需要复制黏贴改一点点东西就好，在此处我用`weeWhite`演示

## 2  替换HTML变为输出函数

### 首页

首页的weewhite是这样的：

```html
<header id="navbar" class="header shadow-2x">
    <div class="container">
        <div class="row justify-content-lg-center">
            <div class="col-12 col-lg-9">
                <nav class="navbar navbar-expand-lg px-0 py-2 py-lg-4">
                    <a href="首页链接" class="navbar-brand">
                    网页标题
                    </a>
                    <div class="collapse navbar-collapse order-2 order-lg-1">
                        <ul class="navbar-nav mx-auto main-menu">

                            <li class="menu-item">
                                <a href="首页链接">首页</a>
                            </li>

                                <li class="menu-item">
                                    <a href="页面链接">页面链接</a>
                                </li>

                        </li>
                        </ul>
                    </div>
                    <div class="nav navbar-menu sign-menu order-1 order-lg-2">
                    <a href="javascript:FactionSidebar('on')" class="d-inline-block action-search action-sidebar" id="action-sidebar">
                        <i class="text-lg iconfont icon-search-outline"></i>
                    </a>
                    <a href="javascript:FactionMenu('on')" class="d-inline-block d-lg-none action-menu pl-4" id="action-menu">
                        <i class="text-lg iconfont icon-menu-outline"></i>
                    </a>
                </div>
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- 手机侧边 -->
    <!-- active时弹出 -->
    <div class="mobile-navbar" id="mobile-navbar">
    <div class="mobile-menu p-4 p-md-5">
        <a href="javascript:FactionMenu('end')" class="action-menu btn btn-light px-2 mb-4" id="action-menu">
            <i class="fa fa-times"></i>
        </a>
        <ul class="navbar-nav">
            <li class="menu-item">
                <a href="首页链接">首页</a>
            </li>
            <li class="menu-item">
                <a href="分类链接">分类名字</a> 
            </li>
        </ul>
    </div>
    </div>
    <!--电脑侧边 -->
    <!-- active时弹出 -->
    <div class="sidebar-collapse" id="sidebar-collapse">
    <aside class="sidebar p-4 p-md-5">
        <a href="javascript:FactionSidebar('end')" class="action-search btn btn-light px-2 mb-4" id="action-search">
            <i class="fa fa-times"></i>
        </a>
        <div class="widget widget-search mb-5">
            <div class="widget-title h6 mb-4">
                <span class="nice-b-line">站内搜索</span>
            </div>
            <div class="widget-content">
                <div class="search-input form-group mb-4">
                    <form id="search" method="post" action="/" role="search">
                        <input type="text" placeholder="请输入搜索关键词" class="form-control" name="s">
                        </form>
                    </div>
                </div>
            </div>
            <div id="recent-posts-2" class="widget widget_recent_entries mb-5">
                <div class="widget-title h6 mb-4">
                    <span class="nice-b-line">最新文章</span>
                </div>
                <ul>
                <li><a href="链接">标题</a></li>
                </ul>
            </div>
            <div id="tag_cloud-2" class="widget widget_tag_cloud mb-5">
                <div class="widget-title h6 mb-4">
                    <span class="nice-b-line">标签列表</span>
                </div>
                <div class="tagcloud">
                    <a rel="tag" href="标签的链接" class="tag-cloud-link">标签的名字</a>
                        <!-- <li class="tag-cloud-link">没有任何标签</li> -->

                </div>
            </div>
            <div id="categories-2" class="widget widget_categories mb-5">
                <div class="widget-title h6 mb-4">
                    <span class="nice-b-line">目录分类</span>
                </div>
                <ul>
                <li class="cat-item">
                    <a href="分类链接">分类名字</a> </li> 
                </ul>
            </div>
        </aside>
    </div>
    <div class="bg-overlay"> </div>
```

虽然严格意义上来讲这个不是header，但是依然可以放在一起 

<img src="https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921073511.png" style="zoom: 50%">

可以看到在设计的时候我是已经做了一些备注了（譬如说`分类名字`是要输出在哪里的），接下来要做的只有替换函数了

|需要替换的文字|替换为|
|:--|:--|
|首页链接|`<?php Helper::options()->siteUrl()?>`|
|网页标题|`<?php $this->options->title(); ?>`|
|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921074347.png)|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921074414.png)|
|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921074737.png)|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921074837.png)|
|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921074942.png)|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921075002.png)|
|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921075051.png)|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921075110.png)|
|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921075128.png)|![](https://gitee.com/wibus/blog-assets-goo/raw/master/asset-pic/20210921075143.png)|


因为`页面`不止一个，因此我们还需要使用while循环输出，使用`$this->widget('Widget_Contents_Page_List')->to($pages);`得到全部pages，使用`while($pages->next())`开始循环输出，最后用`endwhile`来结束这段循环

<Alert type="error">
    标签分类原理相同，但是一定要注意要设计好以及放好white的位置，不然会出现套错地方了
</Alert>