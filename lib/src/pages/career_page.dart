import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/pages/career_view.dart';
import 'package:flutter_portfolio/src/resources/career_model.dart';
import 'package:timelines/timelines.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({Key? key}) : super(key: key);

  static const List<CareerModel> career1 = <CareerModel>[
    CareerModel(
      institution: 'ZuelligPharma Korea',
      period: '2021. 08. ~ 2021. 12.',
      position: 'Client Service Specialist',
      detail: [
        '\u2022 글로벌 제약사 및 국내 바이오 회사의 임상프로젝트 관리',
        '\u2022 Digitalization을 위한 보고서 작성 및 데이터 관리 및 관리',
        '\u2022 비즈니스 영어를 통한 업무 스케쥴 조정 및 진행'
      ],
    ),
  ];

  static const List<CareerModel> career2 = <CareerModel>[
    CareerModel(
      institution: '주식회사 브이앤지',
      period: '2020. 01. ~ 2020. 08.',
      position: '웹 솔루션 개발 및 유지보수 사원',
      detail: [
        '\u2022 REST API를 통한 새올행정시스템 연계 서비스 유지보수',
        '\u2022 광양시 공간정보시스템, 전주시 가로수 관리시스템 개발 참여',
        '\u2022 Jeus를 통한 Deploy 및 공간정보시스템 장애 대응 및 처리'
      ],
    ),
  ];



  static const List<CareerModel> career3 = <CareerModel>[
    CareerModel(
      institution: '(주) 엔코아 플레이데이터',
      period: '2019. 03. ~ 2019. 10.',
      position: '빅데이터기반 AI(인공지능)전문가 양성과정 수강생',
      detail: [
        '\u2022 Java프로젝트(PC방 관리 프로그램) 진행 - Java',
        '\u2022 Web프로젝트(스트리머 에디터 매칭 사이트) 진행 - JavaScriptJSP, JQuery, MyBatis, Oracle, Tomcat',
        '\u2022 Hadoop Eco System을 이용한 빅데이터 분석 및 처리'
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Career',
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 70,
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
                color: Colors.green,
                indicatorTheme: IndicatorThemeData(size: 30),
                connectorTheme: ConnectorThemeData(space: 100)),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) => CareerView(dataList : career1),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) =>
                  IndicatorStyle.outlined,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
                color: Colors.green,
                indicatorTheme: IndicatorThemeData(size: 30),
                connectorTheme: ConnectorThemeData(space: 100)),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(left: 300),
                child: CareerView(dataList : career2),
              ),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) =>
                  IndicatorStyle.outlined,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
                color: Colors.green,
                indicatorTheme: IndicatorThemeData(size: 30),
                connectorTheme: ConnectorThemeData(space: 100)),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) => CareerView(dataList : career3),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) =>
                  IndicatorStyle.outlined,
              itemCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
