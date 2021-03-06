import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/pages/career_view.dart';
import 'package:flutter_portfolio/src/resources/career_model.dart';
import 'package:get/get.dart';
import 'package:timelines/timelines.dart';

class CareerPage extends StatelessWidget {
  const CareerPage({Key? key}) : super(key: key);

  static const List<CareerModel> career4 = <CareerModel>[
    CareerModel(
      institution: '(주) 지티윈스',
      period: '2022. 03. ~ 재직 중',
      position: 'Flutter 개발자',
      detail: [
        '\u2022 보스 모바일(주식 종목 추천 및 매매 어플리케이션) 개발',
        '\u2022 GetX & Syncfusion_chart 등 다양한 라이브러리 사용',
        '\u2022 Method Channel을 이용한 유안타 증권 API 사용 및 개발',
      ],
    ),
  ];

  static const List<CareerModel> career3 = <CareerModel>[
    CareerModel(
      institution: 'ZuelligPharma Korea',
      period: '2021. 08. ~ 2021. 12.',
      position: 'Client Service Specialist',
      detail: [
        '\u2022 글로벌 제약사 및 국내 바이오 회사의 임상프로젝트 관리',
        '\u2022 Digitalization을 위한 보고서 작성 및 데이터 분석 및 관리',
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

  static const List<CareerModel> career1 = <CareerModel>[
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
  Widget _mobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Career',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 25,
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
                indicatorPosition: 0.15,
                nodePosition: 0,
                color: Colors.green,
                indicatorTheme: IndicatorThemeData(size: 20),
                connectorTheme: ConnectorThemeData(space: 30)),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) =>
                  CareerView(dataList: career4),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) =>
                  IndicatorStyle.outlined,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
                indicatorPosition: 0.15,
                nodePosition: 0,
                color: Colors.green,
                indicatorTheme: IndicatorThemeData(size: 20),
                connectorTheme: ConnectorThemeData(space: 30)),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) =>
                  CareerView(dataList: career3),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) =>
                  IndicatorStyle.outlined,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
                indicatorPosition: 0.15,
                nodePosition: 0,
                color: Colors.green,
                indicatorTheme: IndicatorThemeData(size: 20),
                connectorTheme: ConnectorThemeData(space: 30)),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) =>
                  CareerView(dataList: career2),
              connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) =>
                  IndicatorStyle.outlined,
              itemCount: 1,
            ),
          ),
          FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
                indicatorPosition: 0.15,
                nodePosition: 0,
                color: Colors.green,
                indicatorTheme: IndicatorThemeData(size: 20),
                connectorTheme: ConnectorThemeData(space: 30)),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              contentsBuilder: (context, index) =>
                  CareerView(dataList: career1),
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

  @override
  Widget _desktopLayout(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

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
              oppositeContentsBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(left: size.width * 0.232),
                child: CareerView(dataList: career4),
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
              contentsBuilder: (context, index) =>
                  CareerView(dataList: career3),
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
                padding: EdgeInsets.only(left: size.width * 0.232),
                child: CareerView(dataList: career2),
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
              contentsBuilder: (context, index) =>
                  CareerView(dataList: career1),
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

  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isMobile) {
      return _mobileLayout(context);
    } else {
      return _desktopLayout(context);
    }
  }
}
