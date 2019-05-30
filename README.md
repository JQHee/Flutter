# Flutter

#### 第三方框架
- 1、 packages: https://pub.dev/packages/
- 2、加载提示框架：https://pub.dev/packages/flutter_spinkit
- 3、汉字转拼音：https://github.com/flutterchina/lpinyin
- 4、listView索引和分区： https://github.com/flutterchina/azlistview
- 5、目前最好用的Sp工具类 SpUtil、最好用的屏幕工具类 ScreenUtil：https://github.com/Sky24n/flustars
- 6、国际化： https://github.com/Sky24n/fluintl
- 7、常用的工具类：https://github.com/Sky24n/common_utils
- 8、轮播图：https://github.com/best-flutter/flutter_swiper
- 9、网络请求库：https://github.com/flutterchina/dio
- 10、引导页：https://github.com/duytq94/flutter-intro-slider
- 11、数据库：https://github.com/tekartik/sqflite

```
cupertino_icons: ^0.1.2
shared_preferences: ^0.5.1+1
fluttertoast: ^3.0.1
json_annotation: ^2.4.0
flutter_redux: ^0.5.3
device_info: ^0.4.0+1
connectivity: ^0.4.3+1
url_launcher: ^5.0.2
flutter_markdown: ^0.2.0
share: ^0.6.0+1
flutter_spinkit: ^3.1.0
flutter_webview_plugin: ^0.3.5
sqflite: ^1.1.5
pub_semver: ^1.4.2
flutter_statusbar: ^0.0.1
flutter_svg: ^0.13.0+1
flutter_slidable: ^0.5.0

dio: ^2.1.4
event_bus:  ^1.1.0
flutter_cache_manager: ^0.3.2
path_provider: ^0.5.0+1
permission_handler: 3.0.2
scoped_model: ^1.0.1
package_info: ^0.4.0+3
rxdart: ^0.22.0
android_intent: ^0.3.0
webview_flutter: ^0.3.7+1

cached_network_image: ^0.7.0
flutter_swiper: ^1.1.6
flutter_staggered_grid_view: ^0.2.7
flutter_splash_screen: ^0.1.0

flutter_localizations:
sdk: flutter
flutter_lottie:
git:
url: https://github.com/CarSmallGuo/flutter_lottie.git
ref: 3adb18f2e2a45b8dbdebc0437e9a4db3f6ff32b8

photo_view:
git:
url: https://github.com/CarSmallGuo/photo_view.git
ref: 6be6a50adfcead0e727a982d32090b9efec9e896
```

#### 参考开源app
- 携程app: https://github.com/JQHee/flutter_trip
- GSYGithubAppFlutter: https://github.com/CarGuo/GSYGithubAppFlutter
- 移动电商：https://github.com/shenghy/flutter_shop
- 玩转Android: https://github.com/ngu2008/wanandroid
- 仿滴滴出行：https://juejin.im/post/5c6cc95e518825266c3f095a
- Flutter版本的玩Android完整版本：https://www.jianshu.com/p/ef4bf0bbe385
- Redux: https://github.com/NIAEFEUP/project-schrodinger/blob/develop/app_feup/lib/Main.dart
- rxdart 实现 BLoC 模式: https://github.com/kukyxs/flutter_weather


#### 主要模块
- 生命周期
- Redux（共享状态和单一数据）： https://pub.flutter-io.cn/packages/flutter_redux、https://juejin.im/post/5b79767ff265da435450a873、https://github.com/riskers/flutter_notebook_redux
- 导航
- 路由
- 和Native相互交互
- 封装native框架供Flutter使用
- 国际化
- 网络请求封装
- Native 集成 Flutter
- 根据json自动生成dart模型：https://javiercbk.github.io/json_to_dart/
- 页面布局：https://flutterchina.club/widgets/layout/、https://www.jianshu.com/p/01bf6da35b96

#### 学习网站
- Flutter序列文章：https://www.jianshu.com/u/6e613846e1ea
- Flutter官网：https://flutter.dev
- Flutter中文网：https://flutterchina.club
- wendux：https://book.flutterchina.club
- 阿里巴巴咸鱼团队系列文章：https://www.yuque.com/xytech/flutter
- 阿里巴巴flutter-go，flutter 开发者帮助 APP，包含 flutter 常用 140+ 组件的demo 演示与中文：https://github.com/alibaba/flutter-go
- 玩Android跨平台项目：https://www.wanandroid.com/project/list/1?cid=402
- Json转Model插件：https://github.com/neverwoodsS/idea_dart_json_format
- Flutter-Notebook,提供了很多优秀样例和Demo：https://github.com/OpenFlutter/Flutter-Notebook
- 简书恋猫月亮`GSYGithubAppFlutter`：https://www.jianshu.com/u/6e613846e1ea

#### Flutter打包与发布
- 与原生app打包相同


#### 一、环境搭建
所需工具： Mac 、VSCode、XCode(打包)
参考链接：https://www.jianshu.com/p/55a047296368 、https://www.jianshu.com/p/2e04e9d82998

#### 二、常用实例
- Flutter 三种方式实现页面切换后保持原页面状态：https://www.jianshu.com/p/7d4a028529b9
- 闲鱼 fish-redux 的非官方可视化调试工具：https://www.jianshu.com/p/5b479eab9dce
- Flutter 之 AppBar：https://www.jianshu.com/p/3117293aebe1
- 一行命令，将 JSON 文件转成 Dart 类：https://juejin.im/post/5cda2d8ef265da038364e621、https://book.flutterchina.club/chapter10/json_model.html
- Flutter 仿掘金之动态Tabbar:  https://juejin.im/post/5ce8dd43f265da1b6a346fc4
- 彻底解决Flutter自带TabBarView的众多bug: https://juejin.im/post/5cde82346fb9a07f04201760
- 加载更多：https://www.jianshu.com/p/4ded10b7d961

#### 页面
- Widget 分为 有状态 和 无状态 两种 （StatelessWidget、StatefulWidget）
- Flutter 布局： https://flutterchina.club/widgets/layout/、https://www.jianshu.com/p/01bf6da35b96
- 控件的学习：https://www.jianshu.com/p/b2bc9cd27cc1、https://github.com/draftbk/flutter_road


#### 问题处理
- `Waiting for another flutter command to release the startup lock` ：如果遇到这个问题：
```
  1、打开flutter的安装目录/bin/cache/ 
  2、删除lockfile文件 
  3、重启AndroidStudio
```
