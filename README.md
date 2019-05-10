# HydroIDE 水文集成数据处理环境 总模块

项目抽取自 HydroCurve 项目。

```bash
├── commons 常用组件库，与 HydroCurve 共享
├── graphicswidgets 图形组件库，与 HydroCurve 共享
├── plugins 插件，与 HydroCurve 共享
│   ├── dataproviders 数据源插件
│   │   └── sqlitedataprovider SQLite 数据源插件
│   ├── fileformats 文件格式插件
│   ├── managers 管理插件
│   │   └── datamanager 数据管理器插件
│   └── processviewer 过程查看器插件
└── src 本项目代码
```

## 0. 框架/库

Qt 5.12.3+
Boost 1.61+
Python 3.7+

## 1. 克隆

1. 方法一：通过git clone --recursive

    git clone --recursive https://github.com/hydroide/hydroide.git
    
2. 方法二：克隆后初始化 submodule

    git submodule update --init

## 2. 初始化依赖

### boost

git submodule 位于 dependencies/boost

1. Windows
```console
    cd dependencies\boost
    .\bootstrap.bat
    .\b2 headers
```
2. Linux/MacOS
```console
    cd dependencies/boost
    ./bootstrap.sh
    ./b2 headers
```console

boost 及它的 submodule 非常大，可忽略这个 submodule ，下载 boost 发行版的包放在 dependencies/boost 中。

## 3. 编译

1. Microsoft Visual C++ 2017+

需要在代码中增加 UTF-BOM 头和

    #if _MSC_VER >= 1600
    #pragma execution_character_set("utf-8")
    #endif
    
工具见utils目录（工具依赖Python 3.3+）。

2. GCC 7.30+

尚无特殊要求。