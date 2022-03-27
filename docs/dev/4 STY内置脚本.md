# 4 STY 内置脚本

在空闲时间，由于发现每次新增部件都忒麻烦，每次要循环地做相似的事情，于是便写了一个小脚本

这个脚本一直随着 STY 打包在主题根目录中：`create`

![image-20220102161639946](https://cdn.my-api.cn/user/w/asset-pic-gitee/20220102161645.png)

那就讲下该咋用吧

## 使用帮手

终端运行下面的命令即可启动帮手

```bash
./create
```

你只需要跟着提示走即可～

运行结束后，你电脑的剪贴板将会出现类似于这样的代码：

```php
    case 'icarus':
        $headnav = 'themes/icarus/icarus_headnav.php';
        $carousel = 'themes/icarus/icarus_carousel.php';
        $list = 'themes/icarus/icarus_list.php';
        $archieve = 'themes/icarus/icarus_archieve.php';
        $footer = 'themes/icarus/icarus_footer.php';
        $comment = 'themes/icarus/icarus_comment.php';
        $post = 'themes/icarus/icarus_post.php';
        $page = 'themes/icarus/icarus_page.php';
        $css = 'css/icarus.css';
        $friends = 'themes/icarus/icarus_friends.php';
        break;
```

接下来你需要进入`global.php`了，或者**帮手**将会帮你**自动打开**

![image-20220102161809558](https://cdn.my-api.cn/user/w/asset-pic-gitee/20220102161809.png)

## 需要注意的

- 如果你需要让帮手**自动**帮你打开`global.php`，你需要安装好 code 命令（Vscode 的命令面板上可以安装这个）
- 这个帮手并**不适合 Windows 系列**产品，对于 Linux 各类发行版**不太确定**，因为我是按照 macOS 上来写的（虽然 macOS 和 Linux 有些关系），所以我也只能说：**此帮手只能在 macOS 上使用**
- 这个脚本将会自动生成一份以部件名字命名的`scss`文件，你可以自己将其改为`css`，但是你必须要记住：**在 assets/css 文件夹中，必须要有这个文件！且这个文件是已编写样式表的！**
- 如果你保留 `scss` 文件，则你需要**将 scss 编译**后放入**assets/css**文件夹中，且**编译后的 css**需要与填入`global.php`的**名字相同**

## 我对 SCSS 编译后迁移文件的做法

我又写了一个小脚本：

```zsh
cd ~/Desktop/STY/themes/
for i in *; do
    if [ -d $i ]; then
        cd $i/css/
        sass $i.scss:$i.css --style compressed
        cd ../../ # 退回themes目录
        mv $i/css/$i.css  ../assets/css/
        mv $i/css/$i.css.map  ../assets/css/
    fi
done

```
