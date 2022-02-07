import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/pages/information_view.dart';
import 'package:flutter_portfolio/src/resources/data_model.dart';
import 'package:flutter_portfolio/src/resources/horizontal_dashed_divider.dart';
import 'package:flutter_portfolio/src/resources/information_model.dart';
import 'package:flutter_portfolio/src/resources/url.dart';
import 'package:line_icons/line_icons.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static const List<InfoModel> info = <InfoModel>[
    InfoModel(
        urlKey: UrlKey.email,
        iconData: IconData(0xf018, fontFamily: 'MaterialIcons'),
        detail: 'pplm1042@naver.com'),
    InfoModel(
        urlKey: UrlKey.github,
        iconData: LineIcons.github,
        detail: 'https://github.com/pplm1042'),
    InfoModel(
        urlKey: UrlKey.blog,
        iconData: LineIcons.bloggerB,
        detail: 'https://blog.naver.com/pplm1042'),
  ];

  static const List<DataModel> education = <DataModel>[
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(period: '2012. 03. ~ 2016. 02.', detail: '청주대학교 전자공학과 졸업'),
    DataModel(period: '2009. 03. ~ 2012. 02.', detail: '청주세광고등학교 졸업'),
  ];

  static const List<DataModel> project = <DataModel>[
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
  ];

  static const List<DataModel> certification = <DataModel>[
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.', detail: '빅데이터 기반 AI인공지능 전문가 양성 과정 수료'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://cdn.crowdpic.net/list-thumb/thumb_l_8E1A44DD8454EDD9497EDF125C584461.jpg'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Profile',
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 30,
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
                        InfomationView(informationList: info),
                        HorizontalDashedDivider(space: 40),
                        Text('Education'),
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
                        Text('Project'),
                        HorizontalDashedDivider(space: 40),
                        Text('Certification'),
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
}
