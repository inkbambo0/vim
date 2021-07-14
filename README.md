# Vim 笔记

## 移动

- w/W：下一个word/Word开头
- e/E：下一个word/Word尾
- b/B：上一个word/Word开头

word：以空白符分割的单词，Word以空白符分割的单词



- 0: 移动到行首第一个字符，^: 移动到第一个非空白字符
- $: 移动到行尾，g_: 移动到行尾非空白字符



- gg/G: 开头和结尾，ctrl+o: 快速返回

- H/M/L: 当前屏幕开头/中间/结尾



- ctlf + f/b: 下/上翻整页，ctrl + d/u: 下/上翻半页

## 查找

- f{char}: 跳转到char字符上，t{char}跳转到char前一个字符（`;`下一个，`,`上一个）
- F{char}: 反向搜索

## 删除

- x: 删除一个字符
- daw(dw): 删除一个单词(包括空格)，diw: 删除一个单词(不包括空格)
- dd: 删除整行
- dt{char}: 从当前删除到char字符前
- di(/): 删除括号内的内容

## 替换

- r/R: 替换/从当前开始往后替换
- s/S: 删除并进入插入模式/删除整行并进入插入模式
- cw: 删除一个单词并进入插入模式(caw/ciw)
- ct{char}: 删除到char字符并进入插入模式
- ci{char}: 删除括号内的内容并进入插入模式

## 搜索

- /或者?: 正向/反向搜索
- n/N: 下一个/上一个匹配

- */#: 更换搜索词，上一个匹配(n/N正常)/下一个匹配(n/N反向)

## 搜索替换

- g(global)/c(confirm)/n(number): 全局/确认/匹配查询

- :[(1,5)|%] s/搜索词/替换的内容/g:  替换
- :1,6 s/self//n: 1到6行单词self的统计

## 多文件操作

- :ls: 查看缓冲区
- :b n: 条状到第n个缓冲区
- :bprevious/:bnext/:bfirst/:blist/:b <bugger_name>

### 分割：

- <ctrl + w> + s(:sp): 水平分割
- <ctrl + w> + v(:vs): 垂直分割

### 窗口移动：

- <ctrl + w> + w: 循环移动
- <ctrl + w> + h/j/k/l: 光标切换窗口
- <ctrl + w> + H/J/K/L: 窗口移动

### 窗口大小设置：

- <ctrl + w> + =: 等宽、登高
- <ctrl + w> + _: 最大化窗口高度
- <ctrl + w> + |: 最大化窗口宽度
- [n] <ctrl + w> + _: 高度设为n行
- [n] <ctrl + w> + |: 宽度设为n列

### tab 设置：

- :tabe[dit] {filename}: 在新标签页打开{filename}
- <crtl + w> T: 把当前窗口移到新标签页
- :tabc[lose]: 关闭当前标签页，所有窗口
- :tabo[nly]: 关闭其他标签页
- :tabn[ext] {n} 或 {n}gt: 切换到编号为n的标签页
- :tabn[ext] 或 gt: 切换到下一个标签页
- :tabp[revious] 或 gT: 切换到上一个标签页

## 复制黏贴

- "+: 复制到系统剪切板
- "a p: 粘贴寄存器a中的内容

## 宏

- q开始/结束录制(qa: 将录制结果放在寄存器a中)，使用宏(@a)，多行使用：:normal @a
- :normal I": 当前行首添加引号

## 补全

- ctrl + n/p: 补全上下选择
- ctrl + x + f: 路径补全
- ctrl + x + o: 全能补全

## 文件名路径

- :r! echo %: 当前文件文件名
- :r! echo %:p: 当前文件文件绝对路径

## 配色

- :colorscheme: 查看配色
- :colorscheme <ctrl + d>: 显示所有配色

- :colorscheme <name>: 修改

