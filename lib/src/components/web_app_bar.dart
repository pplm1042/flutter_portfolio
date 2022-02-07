import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class WebAppBar extends StatelessWidget with PreferredSizeWidget{
  const WebAppBar(this.itemScrollController, {Key? key}) : super(key: key);

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80),
      child: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: <Widget>[
              Text(
                '#Min Park',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(width: 40),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                  MaterialStateProperty.all(const Size.fromWidth(100)),
                ),
                onPressed: () => itemScrollController.scrollTo(
                  index: 0,
                  duration: const Duration(milliseconds: 500),
                ),
                child: Text(
                  'Main',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 40),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                  MaterialStateProperty.all(const Size.fromWidth(100)),
                ),
                onPressed: () => itemScrollController.scrollTo(
                  index: 1,
                  duration: const Duration(milliseconds: 500),
                ),
                child: Text(
                  'Profile',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                  MaterialStateProperty.all(const Size.fromWidth(100)),
                ),
                onPressed: () => itemScrollController.scrollTo(
                  index: 2,
                  duration: const Duration(milliseconds: 500),
                ),
                child: Text(
                  'Skill',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                  MaterialStateProperty.all(const Size.fromWidth(100)),
                ),
                onPressed: () => itemScrollController.scrollTo(
                  index: 3,
                  duration: const Duration(milliseconds: 700),
                ),
                child: Text(
                  'Project',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                  MaterialStateProperty.all(const Size.fromWidth(100)),
                ),
                onPressed: () => itemScrollController.scrollTo(
                  index: 4,
                  duration: const Duration(milliseconds: 700),
                ),
                child: Text(
                  'Career',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: ButtonStyle(
                  fixedSize:
                  MaterialStateProperty.all(const Size.fromWidth(100)),
                ),
                onPressed: () => itemScrollController.scrollTo(
                  index: 5,
                  duration: const Duration(milliseconds: 700),
                ),
                child: Text(
                  'Blog',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}