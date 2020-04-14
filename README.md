<!--
 * @Author         : yanyongyu
 * @Date           : 2020-04-13 21:52:56
 * @LastEditors    : yanyongyu
 * @LastEditTime   : 2020-04-13 22:01:15
 * @Description    : None
 * @GitHub         : https://github.com/yanyongyu
 -->

# 构建安装

## 安装依赖

```shell
flatpak install flathub org.freedesktop.Platform/i386/18.08
flatpak install flathub org.freedesktop.Sdk/i386/18.08
```

## 构建运行时

```shell
flatpak-builder --repo=repo --arch=i386 .build com.deepin.wine.json
```

## 测试运行时

```shell
flatpak-builder --run .build com.deepin.wine.json deepin-wine --version
```

## 安装运行时

```shell
flatpak remote-add --user --no-gpg-verify repo-deepinwine ./repo
flatpak install --user repo-deepinwine com.deepin.wine.Platform
```
