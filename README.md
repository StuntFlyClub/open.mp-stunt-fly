# open.mp-stunt-fly
An open-source project for a SA-MP (San Andreas Multiplayer) online server built for the "Grand Theft Auto: San Andreas" (GTASA) flying stunts enthusiast community.

---

## 快速开始

### 1. 环境准备

下载最新的 **open.mp** 服务端：
* [open.mp Releases](https://github.com/openmultiplayer/open.mp/releases)

### 2. 克隆项目

完整获取项目源码及子模块依赖：
```bash
git clone --recursive https://github.com/StuntFlyClub/open.mp-stunt-fly.git
```
### 3. 部署服务端

1. 将下载好的 **open.mp 服务端压缩包**内 `Server` 文件夹里的全部内容解压至 `open.mp-stunt-fly` 根目录

2. **关键提示**：提示文件冲突时，请选择 **“跳过”** 或 **“不覆盖”**，确保本项目内预设核心配置/文件不被覆盖

---

## 插件与依赖

根据你的运行系统，从以下清单中下载依赖和插件，根据说明安装，通常是放置到 `plugins/` 目录或 `components/` 目录

* sscanf2: https://github.com/Y-Less/sscanf
* Pawn.CMD: https://github.com/katursis/Pawn.CMD
* PawnPlus: https://github.com/IllidanS4/PawnPlus
* Pawn Randomix: https://github.com/Fanorisky/PawnRandomix
* Pawn Raknet: https://github.com/katursis/Pawn.RakNet
* MySQL Plugin: https://github.com/pBlueG/SA-MP-MySQL
* Streamer Plugin: https://github.com/samp-incognito/samp-streamer-plugin
* SyS' bcrypt Plugin: https://github.com/Sreyas-Sreelal/samp-bcrypt
* foreach (已内置 无需下载): https://github.com/Open-GTO/foreach
* easyDialog (已内置 无需下载): https://github.com/Awsomedude/easyDialog

---

## 核心配置

### 1. 数据库配置

* **路径**：`服务器根目录/mysql.ini`
* **操作**：按需求修改数据库主机、用户名及密码

### 2. 服务器基础信息

* **路径**：`启动服务器后 在 MySQL 数据库中找到表单 serverinfo 修改服务器信息 每60秒同步更新一次`
* **操作**：按需求自定义服务器名称、RCON 密码等等

### 3. 启动服务器

* 搭建 MySQL 数据库, 根据 `mysql.ini` 的配置创建对应表单
* 运行根目录下的 `omp-server.exe` (Windows) 或 `./omp-server` (Linux) 即可开启

---

## 如何参与项目

### 1. 环境建立

前往 https://github.com/StuntFlyClub/open.mp-stunt-fly 网页页面，点击项目右上角Fork建立分支

```bash
# 通过git克隆你的Fork到你的电脑本地
git clone --recursive https://github.com/你的用户名/open.mp-stunt-fly.git

# 进入目录并关联主仓库
cd open.mp-stunt-fly
git remote add upstream https://github.com/StuntFlyClub/open.mp-stunt-fly.git
```

### 2. 开发流程 (循环操作)

每次开工 一个功能开一个新分支 不要在 main 分支上写代码

```bash
# 准备开一个新分支时
# 回到主分支并同步最新代码 确保你的起点是项目最新状态
git checkout main
git pull upstream main

# 开启新功能分支（名字随你起） 
# 开启之后 你将处于一个完全独立的空间 代码写乱写报错，也不会影响
git checkout -b 分支名

# 这时候可以开始写代码/新增/编辑内容了

# (可选) 随时回滚：如果写乱了想重来 回到“刚开分支时”的干净状态
git restore .

# 保存进度
git add .

# 本地提交
# 只要还没推送 就可以提交多次 记录不同的阶段
# 写好了某个功能 -> add + commit
# 写好了TextDraw界面 -> add + commit
# 写好了优化 -> add + commit
git commit -m "提交说明"

# 完工 推送分支到你的 GitHub
# 当你觉得这一个功能写好了 开始上传 推送到你自己的 Fork 仓库
git push origin 分支名
```
### 3. 提交审核 (PR)
1. 前往你的 GitHub 项目页面
2. 点击 Contribute -> Open Pull Request
3. 确认是从你的 `分支名` 合并到主仓库的 `main`
4. 写好描述，点击 Create pull request

### 4. 问题

#### 怎么知道审核过了

在终端执行以下指令 看最近的记录里有没有你的名字
```bash
# 先 fetch 更新信息 看看主仓库有没有更新新东西
# 把主仓库的新代码接在下面，再把你的代码放回顶端
git fetch upstream
git log upstream/main -n 5
```
如果列表里出现了你的提交记录或合并记录，说明已经成功并入主仓库

#### 建议
* 只要你准备开启新任务，请根据开发流程操作 第一步`git checkout main` ....
* 如果修改/新增了内容，并且 PR 发出去后，不要在同一个分支上写下一个内容
* 只要你觉得“上一个任务写完了”，就不要再碰那个分支
* 如果你在等 PR 过，但想写别的或者修改别的，请重复上面的流程

### 5. 我还没写完功能 明天再写 怎么办

Git 本质上是一个记录在硬盘上的数据库。 只要你执行了 Ctrl + S，代码就物理保存在了你的硬盘里；只要你没有删除文件夹，Git 就会永远记得你处于哪个分支、修改了哪些内容

1. 先做一次“对齐”
```bash
git fetch upstream
git rebase upstream/main
```

2. 确认当前状态
```bash
# 查看当前所在分支 确认你在正确的分支
git branch

# 查看未提交的修改（你会看到你上次 Ctrl + S 保存但没提交的文件）
git status
```

3. 直接继续写代码

    不需要执行任何 Git 命令 直接打开编辑器开工

4. 写好了

```bash
git add .
git commit -m "完成某某功能"
```