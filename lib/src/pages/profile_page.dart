import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/pages/data_view.dart';
import 'package:flutter_portfolio/src/pages/information_view.dart';
import 'package:flutter_portfolio/src/resources/data_model.dart';
import 'package:flutter_portfolio/src/resources/horizontal_dashed_divider.dart';
import 'package:flutter_portfolio/src/resources/information_model.dart';
import 'package:flutter_portfolio/src/resources/url.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const List<InfoModel> info = <InfoModel>[
    InfoModel(
        urlKey: UrlKey.email,
        iconData: IconData(0xf018, fontFamily: 'MaterialIcons'),
        detail: 'pplm1042@naver.com',
        color: Colors.blue),
    InfoModel(
        urlKey: UrlKey.github,
        iconData: LineIcons.github,
        detail: 'https://github.com/pplm1042',
        color: Colors.purple),
    InfoModel(
        urlKey: UrlKey.blog,
        iconData: LineIcons.bloggerB,
        detail: 'https://blog.naver.com/pplm1042',
        color: Colors.green),
  ];

  static const List<DataModel> education = <DataModel>[
    DataModel(
        period: '2020. 08. ~ 2020. 11.',
        detail: '패스트캠퍼스 코딩테스트 + 온라인 완주반 온라인 클래스 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(period: '2012. 03. ~ 2016. 02.', detail: '청주대학교 전자공학과 졸업'),
    DataModel(period: '2009. 03. ~ 2012. 02.', detail: '청주세광고등학교 졸업'),
  ];

  static const List<DataModel> project = <DataModel>[
    DataModel(
        period: '2022. 01. ~ 2022. 02.',
        detail: 'Flutter 웹 프로젝트(포트폴리오) 개발(Flutter, Dart, Firebase, GetX)'),
    DataModel(
        period: '2020. 04. ~ 2020. 07.',
        detail: '전주시 가로수 관리 시스템(Jeus6.0, Toad 6.0, Spring FrameWork, Java)'),
    DataModel(
        period: '2019. 07. ~ 2019. 09.',
        detail:
            '스트리머 편집자 매칭 사이트 ( HTML, CSS, JavaScript, Java8, JSP, Oracle 11g, Spring, Jquery, MyBatis, JSTL)'),
    DataModel(period: '2019. 04. ~ 2019. 06.', detail: 'PC방 관리 프로그램( Java 8 )'),
    DataModel(period: '2014.', detail: '당첨번호 추첨 프로그램 ( C# )'),
    DataModel(period: '2013.', detail: '도서관 자리예약 프로그램 ( C )'),
  ];

  static const List<DataModel> certification = <DataModel>[
    DataModel(period: '2021. 03.', detail: 'TOEIC 750'),
    DataModel(period: '2019. 11.', detail: '정보처리기사'),
    DataModel(period: '2019. 08.', detail: 'OPIC IM2'),
  ];

  @override
  Widget _mobileLayout(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.crowdpic.net/list-thumb/thumb_l_8E1A44DD8454EDD9497EDF125C584461.jpg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 25,
            ),
            IntrinsicHeight(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InformationView(informationList: info),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        DataView(title: 'Education', dataList: education),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        DataView(title: 'Project', dataList: project),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                ],
              ),
            ),
            IntrinsicHeight(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        DataView(
                            title: 'Certification', dataList: certification),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget _desktopLayout(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.crowdpic.net/list-thumb/thumb_l_8E1A44DD8454EDD9497EDF125C584461.jpg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 100,
            ),
            IntrinsicHeight(
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InformationView(informationList: info),
                        HorizontalDashedDivider(space: 40),
                        DataView(title: 'Education', dataList: education),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        DataView(title: 'Project', dataList: project),
                        HorizontalDashedDivider(space: 40),
                        DataView(
                            title: 'Certification', dataList: certification),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isMobile) {
      return _mobileLayout(context);
    } else {
      return _desktopLayout(context);
    }
  }
}
