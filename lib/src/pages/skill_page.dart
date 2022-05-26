import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/controller/algorithm_controller.dart';
import 'package:flutter_portfolio/src/pages/data_view.dart';
import 'package:flutter_portfolio/src/pages/skill_view.dart';
import 'package:flutter_portfolio/src/resources/data_model.dart';
import 'package:flutter_portfolio/src/resources/horizontal_dashed_divider.dart';
import 'package:flutter_portfolio/src/resources/url.dart';
import 'package:get/get.dart';

final c = Get.put(AlgorithmController());

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  static const List<DataModel> flutter = <DataModel>[
    DataModel(
        period: '2022. 05.',
        detail: 'GetX & Syncfusion_chart 라이브러리를 이용한 실시간 주식 차트 구현'),
    DataModel(
        period: '                 ',
        detail: 'Syncfusion Team과 Ticket을 통한 커뮤니케이션으로 버그 Fix 기여'),
    DataModel(
        period: '                 ',
        detail: 'Git을 통한 형상 관리(PM으로서 최종 Merge 역할)'),
    DataModel(
        period: '2022. 02.',
        detail: 'GetX를 포함한 다양한 라이브러리를 이용한 웹 프로젝트 개발(포트폴리오)'),
    DataModel(period: '                 ', detail: 'Git을 통한 형상 관리'),
    DataModel(period: '                 ', detail: 'Firebase를 통한 배포'),
    DataModel(period: '2021. 08.', detail: '독학으로 공부 시작'),
  ];

  static const List<DataModel> algorithm = <DataModel>[
    DataModel(period: '2021.', detail: '카카오 & 마이다스아이티 등 대기업 코딩테스트 합격'),
    DataModel(period: '2020.', detail: '패스트캠퍼스 온라인 완주반 수료(우수 수강생 인터뷰 진행)'),
    DataModel(period: '2019.', detail: '정보처리기사 취득'),
  ];

  static const List<DataModel> coding = <DataModel>[
    DataModel(
        period: '2020. 01. ~ 2020. 08.',
        detail: '주식회사 브이앤지(GIS기반 웹 솔루션 개발 및 유지보수, REST API 사용)'),
    DataModel(
        period: '2019. 03. ~ 2019. 10.',
        detail: '빅데이터기반 AI(인공지능) 전문가 양성 과정 수료'),
  ];

  static const List flutterImages = [
    'assets/images/boss_app.webp',
    'assets/images/syncfusion_ticket.webp',
    'assets/images/syncfusion_bug_fixed.webp',
  ];

  static const List algorithmImages = [
    'assets/images/certificate.webp',
    'assets/images/kakao.webp',
    'assets/images/fastcampus.webp',
    'assets/images/coding.webp'
  ];

  static const List codingImages = [
    'assets/images/encore.webp',
    'assets/images/encore_skill.webp',
  ];

  @override
  Widget _mobileLayout(BuildContext context) {
    final CarouselController car1 = CarouselController();
    final CarouselController car2 = CarouselController();
    final CarouselController car3 = CarouselController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Skill',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SkillView(title: 'flutter', dataList: flutter),
                      ],
                    ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 400.0,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          initialPage: c.flutterIndex.value,
                          onPageChanged: (index, reason) {
                            c.flutterIndex.value = index;
                          },
                        ),
                        carouselController: car1,
                        items: flutterImages.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () {
                              Get.dialog(AlertDialog(
                                content: Image.asset(
                                  '${flutterImages[entry.key]}',
                                ),
                              ));
                            },
                            child: Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                    ),
                                    child: Image.asset(
                                      '${flutterImages[entry.key]}',
                                    ));
                              },
                            ),
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: flutterImages.asMap().entries.map((entry) {
                          return InkWell(
                            child: Obx(
                              () => Container(
                                width: 12,
                                height: 12,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: c.flutterIndex.value == entry.key
                                      ? Color.fromRGBO(0, 0, 0, 0.9)
                                      : Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                              ),
                            ),
                            onTap: () => car1.animateToPage(entry.key),
                          );
                        }).toList(),
                      ),
                      HorizontalDashedDivider(space: 40),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SkillView(title: '자료구조 및 알고리즘', dataList: algorithm),
                      ],
                    ),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider(
                        options: CarouselOptions(
                          height: 400.0,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          initialPage: c.algorithmIndex.value,
                          onPageChanged: (index, reason) {
                            c.algorithmIndex.value = index;
                          },
                        ),
                        carouselController: car2,
                        items: algorithmImages.asMap().entries.map((entry) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white24,
                                  ),
                                  child: Image.asset(
                                    '${algorithmImages[entry.key]}',
                                  ));
                            },
                          );
                        }).toList(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: algorithmImages.asMap().entries.map((entry) {
                          return InkWell(
                            child: Obx(
                              () => Container(
                                width: 12,
                                height: 12,
                                margin: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: c.algorithmIndex.value == entry.key
                                      ? Color.fromRGBO(0, 0, 0, 0.9)
                                      : Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                              ),
                            ),
                            onTap: () => car2.animateToPage(entry.key),
                          );
                        }).toList(),
                      ),
                      HorizontalDashedDivider(space: 40),
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SkillView(
                            title: 'Front-End & Back-End', dataList: coding),
                      ],
                    ),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 400.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            initialPage: c.codingIndex.value,
                            onPageChanged: (index, reason) {
                              c.codingIndex.value = index;
                            },
                          ),
                          carouselController: car3,
                          items: codingImages.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                    ),
                                    child: Image.asset(
                                      '${codingImages[entry.key]}',
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: codingImages.asMap().entries.map((entry) {
                            return InkWell(
                              child: Obx(
                                () => Container(
                                  width: 12,
                                  height: 12,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: c.codingIndex.value == entry.key
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                ),
                              ),
                              onTap: () => car3.animateToPage(entry.key),
                            );
                          }).toList(),
                        ),

                        // Obx( () => Text('${c.nowIndex.value}')),
                      ],
                    ),
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
    );
  }

  @override
  Widget _desktopLayout(BuildContext context) {
    final CarouselController car1 = CarouselController();
    final CarouselController car2 = CarouselController();
    final CarouselController car3 = CarouselController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Skill',
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 70,
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
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SkillView(title: 'flutter', dataList: flutter),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: VerticalDivider(thickness: 2.0),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 400.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            initialPage: c.flutterIndex.value,
                            onPageChanged: (index, reason) {
                              c.flutterIndex.value = index;
                            },
                          ),
                          carouselController: car1,
                          items: flutterImages.asMap().entries.map((entry) {
                            return GestureDetector(
                              onTap: () {
                                Get.dialog(AlertDialog(
                                  content: Image.asset(
                                    '${flutterImages[entry.key]}',
                                  ),
                                ));
                              },
                              child: Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration: BoxDecoration(
                                        color: Colors.white24,
                                      ),
                                      child: Image.asset(
                                        '${flutterImages[entry.key]}',
                                      ));
                                },
                              ),
                            );
                          }).toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: flutterImages.asMap().entries.map((entry) {
                            return InkWell(
                              child: Obx(
                                () => Container(
                                  width: 12,
                                  height: 12,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: c.flutterIndex.value == entry.key
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                ),
                              ),
                              onTap: () => car1.animateToPage(entry.key),
                            );
                          }).toList(),
                        ),

                        // Obx( () => Text('${c.nowIndex.value}')),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
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
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: VerticalDivider(thickness: 2.0),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SkillView(title: '자료구조 및 알고리즘', dataList: algorithm),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: VerticalDivider(thickness: 2.0),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 400.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            initialPage: c.algorithmIndex.value,
                            onPageChanged: (index, reason) {
                              c.algorithmIndex.value = index;
                            },
                          ),
                          carouselController: car2,
                          items: algorithmImages.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                    ),
                                    child: Image.asset(
                                      '${algorithmImages[entry.key]}',
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              algorithmImages.asMap().entries.map((entry) {
                            return InkWell(
                              child: Obx(
                                () => Container(
                                  width: 12,
                                  height: 12,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: c.algorithmIndex.value == entry.key
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                ),
                              ),
                              onTap: () => car2.animateToPage(entry.key),
                            );
                          }).toList(),
                        ),

                        // Obx( () => Text('${c.nowIndex.value}')),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
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
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: VerticalDivider(thickness: 2.0),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SkillView(
                            title: 'Front-End & Back-End', dataList: coding),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: VerticalDivider(thickness: 2.0),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 400.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            initialPage: c.codingIndex.value,
                            onPageChanged: (index, reason) {
                              c.codingIndex.value = index;
                            },
                          ),
                          carouselController: car3,
                          items: codingImages.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white24,
                                    ),
                                    child: Image.asset(
                                      '${codingImages[entry.key]}',
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: codingImages.asMap().entries.map((entry) {
                            return InkWell(
                              child: Obx(
                                () => Container(
                                  width: 12,
                                  height: 12,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: c.codingIndex.value == entry.key
                                        ? Color.fromRGBO(0, 0, 0, 0.9)
                                        : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                ),
                              ),
                              onTap: () => car3.animateToPage(entry.key),
                            );
                          }).toList(),
                        ),

                        // Obx( () => Text('${c.nowIndex.value}')),
                      ],
                    ),
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
