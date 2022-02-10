import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/pages/blog_page.dart';
import 'package:flutter_portfolio/src/pages/career_page.dart';
import 'package:flutter_portfolio/src/pages/main_page.dart';
import 'package:flutter_portfolio/src/components/footer.dart';
import 'package:flutter_portfolio/src/components/web_app_bar.dart';
import 'package:flutter_portfolio/src/pages/profile_page.dart';
import 'package:flutter_portfolio/src/pages/project_page.dart';
import 'package:flutter_portfolio/src/pages/skill_page.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class TemplatePage extends StatelessWidget {
  const TemplatePage({Key? key}) : super(key: key);

  final List<Widget> pages = const <Widget>[
    MainPage(),
    ProfilePage(),
    SkillPage(),
    ProjectPage(),
    CareerPage(),
    BlogPage(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    final ItemScrollController itemScrollController = ItemScrollController();

    return Scaffold(
      appBar: WebAppBar(itemScrollController),
      body: ScrollablePositionedList.builder(
          itemScrollController: itemScrollController,
          itemCount: pages.length,
          itemBuilder: (context, index) => pages[index]),
    );
  }

}
