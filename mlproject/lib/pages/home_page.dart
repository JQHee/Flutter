import 'package:flutter/material.dart';
import 'package:mlproject/common/dao/home_dao.dart';
import 'package:mlproject/common/models/home_model.dart';
import 'package:mlproject/common/models/common_model.dart';
import 'package:mlproject/common/models/config_model.dart';
import 'package:mlproject/common/models/grid_nav_model.dart';
import 'package:mlproject/common/models/sales_box_model.dart';

/// 首页
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}

// with AutomaticKeepAliveClientMixin 让页面不被重载
class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  
  List<CommonModel> bannerList = []; //轮播图列表
  List<CommonModel> localNavList = []; //local导航
  GridNavModel gridNav; //网格卡片
  List<CommonModel> subNavList = []; //活动导航
  SalesBoxModel salesBox; //salesBox数据
  bool _loading = true; //页面加载状态
  
  @override
  void initState() {
    _handleRefresh();
    // TODO: implement dispose
    super.initState();
  }

    @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  // 第一种调用接口方式
  _requestData() {
    HomeDao.fetch().then((result) {

    });
  }

  //加载首页数据
  // 第二种调用接口方式
  Future<Null> _handleRefresh() async {
    try {
      HomeModel model = await HomeDao.fetch();
      setState(() {
        bannerList = model.bannerList;
        localNavList = model.localNavList;
        gridNav = model.gridNav;
        subNavList = model.subNavList;
        salesBox = model.salesBox;
        _loading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        _loading = false;
      });
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          appBar: AppBar(
            title: Text("首页"),
          ),
          body: Text("Hello world",
                  textAlign: TextAlign.center,
                ),
    );
  }
}

class ( {
}

class ( {
}
