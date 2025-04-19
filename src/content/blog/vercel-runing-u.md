---
title: '使用 Vercel Neon 搭建 Umami 统计'
description: 'Vercel 配合Neon 数据库自部署出一个简单易用的 Umami 统计'
pubDate: '2025-04-19'
---

[![vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Fumami-software%2Fumami&env=DATABASE_URL)

> 如果你点击的上方按钮可以直接跳到第四步下面会讲如何获得数据库

# 前言

在之前我是使用百度统计的，但总感觉他人的不如自己的好，后来用别人的Docker服务器搭建了umami统计，又因为他的服务器内存占得有点多了小钱钱不足使用vercel部署，下面是过程

## 配置

1. 点击[Fork](https://github.com/umami-software/umami/fork) 即可
2. 导入后点击 `Settings` 进入设置页面，这时部署可能会报错，需要配置环境变量
3. 点击 `Environment Variables` 进入环境变量页面
4. 点击 `Add Variable` 按钮，添加 `DATABASE_URL` 环境变量，例如 `postgresql://username:mypassword@/`
5. 点击 `Save` 按钮保存
6. 点击 `Deployments` 进入部署页面
7. 点击 `Visit` 按钮进入网站

![屏幕截图_19-4-2025_11287_vercel.com.jpeg](https://s2.loli.net/2025/04/19/s2YZTnUehKGuH5g.jpg)

## 获得Neon数据库

![pE4ndE9.jpg](https://s21.ax1x.com/2025/04/19/pE4ndE9.jpg)

 注册Neon数据库并完成登录后，点击 `New Project` 按钮创建项目![New Project](https://s21.ax1x.com/2025/04/19/pE4nfUA.png)

从上到下依次是项目名称，数据库名称，云服务托管商和云服务所在地区，选择距离我们近的地方反应会更快填写完成后点击 `Create` 按钮创建项目

点击 `Connect` 按钮进入数据库连接页面复制保存下来

![数据库连接](https://s21.ax1x.com/2025/04/19/pE4n5Ct.png)
 
然后将所需的环境变量`DATABASE_URL`的值替换为复制的数据库连接字符串，点击 `Save` 按钮保存后并重新部署

默认用户名和密码是`admin`和`umami`，登录后可以在  页面修改，最后在vercel绑定域名就大功告成啦