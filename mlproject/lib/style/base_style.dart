import 'package:flutter/material.dart';

/**
 * 基本样式
 */
class BaseStyle {
  
  // 带小圆角图片
  static Widget clipRRectImg(url,double width,double height,double border) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(border),
      child: Image.network(
        url,
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }

  // 圆角图片
  static Widget clipOvalImg(url,double size) {
    return ClipOval(
      child: Image.network(
        url,
        width: size,
        height: size,
        fit: BoxFit.fill,
      ),
    );
  }

  // 行数限制的Text
  static Widget limitLineText(double width,String text, TextStyle textStyle,int maxLines) {
    return Container(
      width: width,
      child: Text(
        text,
        style: textStyle,
        overflow: TextOverflow.ellipsis,
        maxLines: maxLines,
      ),
    );
  }

}