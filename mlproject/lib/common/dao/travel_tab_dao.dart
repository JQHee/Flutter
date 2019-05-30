import 'dart:async';
import 'dart:convert';
import 'package:mlproject/network/HttpUtil.dart';
import 'package:mlproject/network/API.dart';
import 'package:mlproject/common/models/travel_tab_model.dart';

///旅拍类别接口
class TravelTabDao {

  static Future<TravelTabModel> fetch() async {
    var response = await HttpUtil.getInstance().get(
                API.TRAVEL_TAB_URL,
                data: null);
    print(response);
    if (response.statusCode == 200) {
      Utf8Decoder utf8decoder = Utf8Decoder(); //fix中文乱码
      final result = json.decode(utf8decoder.convert(response.bodyBytes));
      return TravelTabModel.fromJson(result);
    } else {
      throw Exception('Failed to load home_page.json');
    }
  }

}