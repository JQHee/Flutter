import 'package:flutter/material.dart';

/**
 * 适配苹果刘海屏设备专用
 */
class UIUtil {

  static double getSafeBottomPadding(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getSafeTopPadding(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

}