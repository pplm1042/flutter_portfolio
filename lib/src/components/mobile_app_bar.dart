import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer(this.itemScrollController, {Key? key}) : super(key: key);
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text('Main'),
            onTap: () {
              itemScrollController.scrollTo(
                  index: 0,
                  duration: const Duration(milliseconds: 500));
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              itemScrollController.scrollTo(
                  index: 1,
                  duration: const Duration(milliseconds: 500));
            },
          ),
          ListTile(
            title: Text('Skill'),
            onTap: () {
              itemScrollController.scrollTo(
                  index: 2,
                  duration: const Duration(milliseconds: 500));
            },
          ),
          ListTile(
            title: Text('Project'),
            onTap: () {
              itemScrollController.scrollTo(
                  index: 3,
                  duration: const Duration(milliseconds: 500));
            },
          ),
          ListTile(
            title: Text('Career'),
            onTap: () {
              itemScrollController.scrollTo(
                  index: 4,
                  duration: const Duration(milliseconds: 500));
            },
          ),
          ListTile(
            title: Text('Blog'),
            onTap: () {
              itemScrollController.scrollTo(
                  index: 5,
                  duration: const Duration(milliseconds: 500));
            },
          ),
        ],
      ),
    );
  }
}
class MobileAppBar extends StatelessWidget with PreferredSizeWidget{
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new AppBar(
      title: InkWell(
          child: Text("#Min Park"),
          onTap: () {
            Get.toNamed('/');
          }),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(48);
}