#PopClip-Extensions TranslateAndSay

#### 功能

就是去google翻译的时候同时读出来.可以看做是官方Google Translate和Say的结合体.(程序参考他们写的,图标也是用他们两个拼起来的)

#### 安装

我的没有签名,所以你要安装的话 打开终端输入如下代码：

defaults write com.pilotmoon.popclip LoadUnsignedExtensions -bool YES

然后 直接点击TranslateAndSay.popclipext就可以使用了

#### 已知Bug

无法读出中文(可能只能读出英文).因为是调用终端的say命令. (隐隐记得如果安装了中文语言包是可以读出来的.)

无法打成zip包安装. 未知原因.