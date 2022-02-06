import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Footer extends StatelessWidget {
  const Footer();

  Widget _mobileLayout(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.green),
      child: Text(
        "Copyright ⓒ 2022 Min Park. All rights reserved",
        style: TextStyle(fontSize: 11, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _desktopLayout(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(7),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7), color: Colors.green),
      child: Text(
        "Copyright ⓒ 2022 Min Park. All rights reserved",
        style: TextStyle(fontSize: 11, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget build(BuildContext context) {
    if (GetPlatform.isMobile) {
      return _mobileLayout(context);
    } else {
      return _desktopLayout(context);
    }
  }
}

