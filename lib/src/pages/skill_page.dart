import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/controller/algorithm_controller.dart';
import 'package:flutter_portfolio/src/pages/data_view.dart';
import 'package:flutter_portfolio/src/pages/skill_view.dart';
import 'package:flutter_portfolio/src/resources/data_model.dart';
import 'package:flutter_portfolio/src/resources/url.dart';
import 'package:get/get.dart';

final c = Get.put(AlgorithmController());

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  static const List<DataModel> flutter = <DataModel>[
    DataModel(
        period: '2022. 02.',
        detail: 'GetX를 포함한 다양한 라이브러리를 이용한 웹 프로젝트 개발(포트폴리오)'),
    DataModel(period: '                 ', detail: 'Git을 통한 형상 관리'),
    DataModel(period: '                 ', detail: 'Firebase를 통한 배포'),
    DataModel(period: '2021. 08.', detail: '독학으로 공부 시작'),
  ];

  static const List<DataModel> algorithm = <DataModel>[
    DataModel(period: '2021.', detail: '카카오 & 마이다스아이티 등 대기업 코딩테스트 합격'),
    DataModel(period: '2020. 11.', detail: '패스트캠퍼스 온라인 완주반 수료(우수 수강생 인터뷰 진행)'),
    DataModel(period: '2021. 08.', detail: '정보처리기사 취득'),
  ];

  static const List algorithmImages = [
    'assets/images/certificate.webp',
    'assets/images/kakao.webp',
    'assets/images/fastcampus.webp',
    'assets/images/coding.webp'
  ];

  @override
  Widget build(BuildContext context) {
    final CarouselController car = CarouselController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 120.0),
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
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => launchUrlByKey(UrlKey.homepage),
                          child: Image.asset('assets/images/min_portfolio.webp',
                              fit: BoxFit.fill),
                        ),
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
                        SkillView(title: '자료구조 및 알고리즘', dataList: flutter),
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
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: 400.0,
                            autoPlay: true,
                            enlargeCenterPage: true,
                            initialPage: c.nowIndex.value,
                            onPageChanged: (index, reason) {
                              c.nowIndex.value = index;
                            },
                          ),
                          carouselController: car,
                          items: algorithmImages.asMap().entries.map((entry) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                                    decoration:
                                        BoxDecoration(color: Colors.white,),
                                    child: Image.asset('${algorithmImages[entry.key]}',));
                              },
                            );
                          }).toList(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: algorithmImages.asMap().entries.map((entry)  {
                            return GestureDetector(
                              child: Obx (() => Container(
                                width: 8,
                                height: 8,
                                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: c.nowIndex.value == entry.key ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4),
                                ),
                              ),),
                              // onTap: () => car.animateToPage(entry.key),
                            );
                          }).toList(),
                        ),

                        Obx( () => Text('${c.nowIndex.value}')),
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
          // Row(
          //   children: [
          //     Obx(() => Visibility(
          //         visible: !c.nowIndex.isInfinite, child: Text('${c.nowIndex.value}'))),
          //   ],
          // ),
        ],
      ),
    );
  }
}
