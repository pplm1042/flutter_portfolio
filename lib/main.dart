import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/pages/template_page.dart';
import 'package:get/get.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> initServices() async {
  log("initService");
}

Future<bool> checkPlatform() async {
  log("checkPlatform");
  if (GetPlatform.isMobile) {
    return true;
  } else {
    return false;
  }
}

Future<void> main() async {
  setPathUrlStrategy();
  await initServices();
  runApp(const WebApp());
}

// // 임시 작성, 추후 수정 예정 2022.02.06.
// class MobileApp extends StatelessWidget {
//   const MobileApp({Key? key}) : super(key: key);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(title: 'Mobile Appbar', debugShowCheckedModeBanner: false, home: MobilePage());
//   }
// }
//
// // 임시 작성, 추후 수정 예정 2022.02.06.
// class MobilePage extends StatelessWidget {
//   const MobilePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('박민 포트폴리오'),
//         centerTitle: true,
//         elevation: 0.0,
//         backgroundColor: Colors.green,
//       ),
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(IconData(0xe56c, fontFamily: 'MaterialIcons')),
//               Text('Mobile 환경은 현재 개발 중입니다.'),
//             ],
//           ),
//           Text('- 2022. 02. 11. 개발자 박민 드림 -')
//         ]),
//       ),
//     );
//   }
// }

class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Park Min FLutter Developer',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'notoSans'),
        home: const TemplatePage(),
        initialRoute: '/',
        getPages: [
          GetPage(
              name: '/main',
              page: () => TemplatePage(),
              transition: Transition.noTransition),
        ]);
  }
}
