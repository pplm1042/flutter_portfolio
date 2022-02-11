import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/controller/project_controller.dart';
import 'package:flutter_portfolio/src/pages/project_view.dart';
import 'package:flutter_portfolio/src/resources/horizontal_dashed_divider.dart';
import 'package:flutter_portfolio/src/resources/project_model.dart';
import 'package:get/get.dart';

final c = Get.put(ProjectController());

class ProjectPage extends StatelessWidget {
  const ProjectPage({Key? key}) : super(key: key);

  static const List<ProjectModel> project1 = <ProjectModel>[
    ProjectModel(subtitle : '연계/소속회사 : ', detail : '주식회사 브이앤지',),
    ProjectModel(subtitle: '수행 기간 : ', detail: '2020.06 ~ 2020.07 (약 1개월 소요)'),
    ProjectModel(subtitle: '주요 역할 : ', detail: '지하시설물 공간데이터 구축(상수도, 하수도 관련 대장 생성)'),
    ProjectModel(subtitle: '업무 성과 : ', detail: '고객과의 지속적인 소통과 꾸준한 업무를 통해 마감기한 7월 31일 예정이었던 일정을 7일 앞당겨서 7월 24일에 완료'),
  ];

  static const List<ProjectModel> project2 = <ProjectModel>[
    ProjectModel(subtitle : '연계/소속회사 : ', detail : '주식회사 브이앤지',),
    ProjectModel(subtitle: '수행 기간 : ', detail: '2020.05 ~ 2020.07 (약 2개월 소요)'),
    ProjectModel(subtitle: '주요 역할 : ', detail: '시스템 화면 UI 변경, 공간정보데이터 가공, 통계 쿼리 작성'),
    ProjectModel(subtitle: '업무 성과 : ', detail: 'Spring Framework 기반 Java Front-End 능력 및 DB 핸들링 능력 향샹'),
  ];

  static const List<ProjectModel> project3 = <ProjectModel>[
    ProjectModel(subtitle : '연계/소속회사 : ', detail : '주식회사 브이앤지',),
    ProjectModel(subtitle: '수행 기간 : ', detail: '2020.02 ~ 2020.08 (약 6개월 소요)'),
    ProjectModel(subtitle: '주요 역할 : ', detail: '고객 요청에 따른 개발(마우스 클릭 이벤트 구현 등) 및 유지보수 작업 시행(Jeus를 통한 운영 서버 내 패키지 배포)'),
    ProjectModel(subtitle: '업무 성과 : ', detail: '장애 대응 및 고객의 요청을 만족시키는 유지보수 시행, 11,000건 이상의 의정부 공간정보시스템 내 공간데이터 최신화'),
  ];

  static const List<ProjectModel> enprojectA = <ProjectModel>[
    ProjectModel(subtitle : '연계/소속회사 : ', detail : '(주) 엔코아 플레이데이터',),
    ProjectModel(subtitle: '수행 기간 : ', detail: '2019.04 ~ 2019.04 (약 1개월 소요)'),
    ProjectModel(subtitle: '주요 역할 : ', detail: 'Front-End(로그인 이후 사용자 화면)와 Back-End(회원 가입 및 잔여 시간과 관련한 유효성 검사를 포함한 일체 전담) 담당'),
    ProjectModel(subtitle: '업무 성과 : ', detail: '별도의 DB를 구축하지 않고 파일 입출력을 통해 Data관리하는 능력 향상'),
  ];

  static const List<ProjectModel> enprojectB = <ProjectModel>[
    ProjectModel(subtitle : '연계/소속회사 : ', detail : '(주) 엔코아 플레이데이터',),
    ProjectModel(subtitle: '수행 기간 : ', detail: '2019.07 ~ 2019.08 (약 2개월 소요)'),
    ProjectModel(subtitle: '주요 역할 : ', detail: 'Front-End(Bootstrap을 이용한 메인페이지 작성 및 구현)와 Back-End(Ajax를 이용한 비동기 처리 및 DB 유효성 검사) 담당'),
    ProjectModel(subtitle: '업무 성과 : ', detail: 'Spring Framework 기반 Web 프로젝트에 필요한 전반적인 능력 습득'),
  ];

  static const List enprojectAImages = [
    'assets/images/enproject_a1.webp',
    'assets/images/enproject_a2.webp',
    'assets/images/enproject_a3.webp',
    'assets/images/enproject_a4.webp',
    ];

  static const List enprojectBImages = [
    'assets/images/enproject_b1.webp',
    'assets/images/enproject_b2.webp',
    'assets/images/enproject_b3.webp',
  ];


  @override
  Widget build(BuildContext context) {
    final CarouselController car1 = CarouselController();
    final CarouselController car2 = CarouselController();

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/project_back.webp'),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Project',
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
                        children: const [
                          ProjectView(title: '의정부 공간정보시스템, 영남대학교 캠퍼스 관리시스템, 안성시 과세업무지원시스템 유지보수', dataList: project3),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: VerticalDivider(thickness: 2.0),
                  ),
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          ProjectView(title: '전주시 가로수 관리 시스템 개발', dataList: project2),
                          ProjectView(title: '광양시 공간정보시스템 개발', dataList: project1),
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
                          ProjectView(title: 'PC방 관리 프로그램', dataList: enprojectA),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 400.0,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              initialPage: c.encoreAIndex.value,
                              onPageChanged: (index, reason) {
                                c.encoreAIndex.value = index;
                              },
                            ),
                            carouselController: car1,
                            items: enprojectAImages.asMap().entries.map((entry) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration:
                                      BoxDecoration(color: Colors.white24,),
                                      child: Image.asset('${enprojectAImages[entry.key]}',));
                                },
                              );
                            }).toList(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: enprojectAImages.asMap().entries.map((entry)  {
                              return InkWell(
                                child: Obx (() => Container(
                                  width: 12,
                                  height: 12,
                                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: c.encoreAIndex.value == entry.key ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                ),),
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
                          ProjectView(title: '스트리머 에디터 매칭 사이트', dataList: enprojectB),
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
                      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 400.0,
                              autoPlay: true,
                              enlargeCenterPage: true,
                              initialPage: c.encoreBIndex.value,
                              onPageChanged: (index, reason) {
                                c.encoreBIndex.value = index;
                              },
                            ),
                            carouselController: car2,
                            items: enprojectBImages.asMap().entries.map((entry) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                      width: MediaQuery.of(context).size.width,
                                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                                      decoration:
                                      BoxDecoration(color: Colors.white24,),
                                      child: Image.asset('${enprojectBImages[entry.key]}',));
                                },
                              );
                            }).toList(),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: enprojectBImages.asMap().entries.map((entry)  {
                              return InkWell(
                                child: Obx (() => Container(
                                  width: 12,
                                  height: 12,
                                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: c.encoreBIndex.value == entry.key ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                ),),
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
          ],
        ),
      ),
    );
  }
}
