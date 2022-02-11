import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/controller/blog_controller.dart';
import 'package:flutter_portfolio/src/pages/blog_view.dart';
import 'package:flutter_portfolio/src/resources/url.dart';
import 'package:get/get.dart';

final c = Get.put(BlogController());

class BlogPage extends StatelessWidget {
  const BlogPage({Key? key}) : super(key: key);

  static const List blogContents = [
    ['Algorithm', '코딩테스트를 해결하는 과정을 기술하였습니다.','assets/images/baekjoon.webp', UrlKey.algorithm,],
    ['Lecture', '코딩테스트를 해결하는 과정을 영상으로 담았습니다.', 'assets/images/lecture.webp', UrlKey.lecture,],
    ['Record','공부하면서 필요하다고 생각되는 것은 기록을 하고 있습니다.', 'assets/images/record.webp', UrlKey.record]
  ];


  @override
  Widget build(BuildContext context) {
    final CarouselController car1 = CarouselController();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Blog',
            style: TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 70,
          ),Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: blogContents.asMap().entries.map((entry) {
              return InkWell(
                child: Obx(
                      () => Container(
                    width: 16,
                    height: 16,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 2),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: c.blogIndex.value == entry.key
                          ? Color.fromRGBO(0, 0, 0, 0.9)
                          : Color.fromRGBO(0, 0, 0, 0.4),
                    ),
                  ),
                ),
                onTap: () => car1.animateToPage(entry.key),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 400.0),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                autoPlay: true,
                enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(seconds: 4),
                initialPage: c.blogIndex.value,
                onPageChanged: (index, reason) {
                  c.blogIndex.value = index;
                },
              ),
              carouselController: car1,
              items: blogContents.asMap().entries.map((entry) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Color(0xffdce9e7),
                        ),
                        child: BlogView(dataList: blogContents[entry.key]));
                  },
                );
              }).toList(),
            ),
          ),

        ],
      ),
    );
  }
}
