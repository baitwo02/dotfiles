# nvim config

## 目录结构
```shell
.
├── install.sh     -- 用于安装需要的软件
├── lazy-lock.json -- lazy 安装的插件版本
├── LICENSE        -- 开源协议
├── init.lua       -- 用于加载配置
├── ftplugin       -- 用于放置不同文件类型的个性配置
│   └── c.lua      -- 该文件类型的个性配置
├── lua            -- 用于存放配置文件
│   ├── core               -- 核心配置: 补全, 调试
│   │   ├── conf               -- 用于存放插件配置
│   │   │   ├── init.lua       -- 用于加载插件配置
│   │   │   └── ...            -- 单个插件配置
│   │   ├── lsp                -- 用于放置 lsp 配置
│   │   │   ├── ...            -- lsp 配置
│   │   │   └── settings       -- 用于放置单个语言的配置文件
│   │   │       └── ...        -- 单个语言的 lsp 配置
│   │   ├── dap                -- 用于放置调试配置
│   │   │   └── ...            -- 调试配置文件
│   │   ├── options.lua        -- 配置设置项
│   │   ├── keymaps.lua        -- 配置用按键映射(注: 插件的快捷键在插件配置里单独配置)
│   │   ├── plugins.lua        -- 配置插件
│   │   ├── utils.lua          -- 实用小功能
│   │   └── run-code.lua       -- 一键运行代码
│   ├── snippets           -- 用于放置各种语言的 snippet 文件
│   │   └── ...                -- 单个语言的 snippets
│   └── user               -- 用于放置用户个性化配置
│       ├── conf               -- 用于放置插件配置
│       │   ├── init.lua       -- 加载插件配置
│       │   └── ...            -- 单个插件的配置文件
│       ├── keymaps.lua        -- 用户个性化键盘映射
│       ├── options.lua        -- 用户个性化配置项
│       ├── plugins.lua        -- 用户个性化插件配置
│       └── utils.lua          -- 实用小功能
└── README.md
```
