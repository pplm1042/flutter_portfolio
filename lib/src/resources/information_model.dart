import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/resources/url.dart';

class InfoModel {
  const InfoModel({
    required this.urlKey,
    required this.iconData,
    required this.detail,
  });

  final UrlKey urlKey;
  final IconData iconData;
  final String detail;
}
