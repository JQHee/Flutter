import 'dart:async';
import 'dart:convert';
import 'package:mlproject/network/HttpUtil.dart';
import 'package:mlproject/network/API.dart';
import 'package:mlproject/common/models/home_model.dart';

class HomeDao {

  // 获取首页数据
  static Future<HomeModel> fetch() async {
    var response = await HttpUtil.getInstance().get(
                API.HOME_LIST,
                data: null);
    print(response);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder(); //fix中文乱码
      final result = json.decode(utf8decoder.convert(response.bodyBytes));
      return HomeModel.fromJson(result);
    } else {
      throw Exception('Failed to load home_page.json');
    }
  }

}