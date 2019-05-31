/**
 * 网络请求封装
 */
// 拦截器实现：https://www.jianshu.com/p/217a968dbc80
/*  使用实例
 var response = await HttpUtil.getInstance().get(
                "tree/json",
                data: {'pageIndex': 1, 'pageSize': 10});
    print(response);
  */

import 'package:dio/dio.dart';


const CODE_SUCCESS = 1;   //自定义成功

const _REQUEST_ERROR = -100;    //网络请求错误
const _TIMEOUT_ERROR_CODE = -101; // 网络超时,请重试!
const _INVALID_API_KEY=104; //apikey无线
const _BAD_REQUEST = 400; //请求的地址不存在或者包含不支持的参数
const _UNAUTHORIZED = 401;  //数据未授权
const _FORBIDDEN = 403;  //数据被禁止访问访问
const _NOT_FOUND = 404;  //请求的资源不存在或被删除
const _INTERNAL_SERVER_ERROR = 500;  //内部错误
const _NEED_PERMISSION = 1000;  //数据未授权

/**
 * 网络请求工具类
 */
class HttpUtil {
  
  static HttpUtil instance;
  Dio dio;
  BaseOptions options;

  /**
   * 创建单例
   */
  static HttpUtil getInstance() {
    print('getInstance');
    if (instance == null) {
      instance = new HttpUtil();
    }
    return instance;
  }

  HttpUtil() {
   print('dio赋值');
    // 或者通过传递一个 `options`来创建dio实例
    options = BaseOptions(
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: 10000,
      ///  响应流上前后两次接受到数据的间隔，单位为毫秒。如果两次间隔超过[receiveTimeout]，
      ///  [Dio] 将会抛出一个[DioErrorType.RECEIVE_TIMEOUT]的异常.
      ///  注意: 这并不是接收数据的总时限.
      receiveTimeout: 3000,
      headers: {},
    );
    dio = new Dio(options);

    // 添加拦截器
    // dio.interceptors.add(element)

  }

  /**
   * 错误处理
   */
  static _errorAnalysis(result) {

    if(result == null || result['code'] == null) {
      return {
        "code": _REQUEST_ERROR,
        "error": '网络超时,请重试!',
      };
    }
  
    switch (result['code']) {
      case CODE_SUCCESS:
        result["error"] = "请求成功";
        break;
      case _TIMEOUT_ERROR_CODE:
        result["error"] = "网络超时,请重试!";
        break;
      case _REQUEST_ERROR:
        result["error"] = "网络请求错误";
        break;
      case _INVALID_API_KEY:
        result["error"] = "ApiKey无效了";
        break;
      case _BAD_REQUEST:
        result["error"] = "请求的地址不存在或者包含不支持的参数";
        break;
      case _UNAUTHORIZED:
        result["error"] = "数据未授权";
        break;
      case _FORBIDDEN:
        result["error"] = "数据被禁止访问访问";
        break;
      case _NOT_FOUND:
        result["error"] = "请求的资源不存在或被删除";
        break;
      case _INTERNAL_SERVER_ERROR:
        result["error"] = "内部错误";
        break;
      case _NEED_PERMISSION:
        result["error"] = "数据未授权";
        break;
      default:
        result["error"] = "网络超时,请重试!";
        break;
    }

    return result;
  }

  /**
   * GET 请求
   */
   get(url, {data, options, cancelToken}) async {
    print('get请求启动! url：$url ,body: $data');
    dynamic result;
    Response response;
    try {
      response = await dio.get(
        url,
        queryParameters: data,
        cancelToken: cancelToken,
      );
      print('get请求成功!response.data：${response.data}');
    } on DioError catch (e) {
      if (CancelToken.isCancel(e)) {
        print('get请求取消! ' + e.message);
      }
      print('get请求发生错误：$e');
    }
    return response.data;
  }

  /**
   * POST 请求
   */
  post(url, {data, options, cancelToken}) async {
    print('post请求启动! url：$url ,body: $data');
    Response response;
    try {
      response = await dio.post(
        url,
        data: data,
        cancelToken: cancelToken,
      );
      print('post请求成功!response.data：${response.data}');
    } on DioError catch (e) {
      if (CancelToken.isCancel(e)) {
        print('post请求取消! ' + e.message);
      }
      print('post请求发生错误：$e');
    }
    return response.data;
  }
}