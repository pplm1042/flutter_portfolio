import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio/src/resources/image_with_animated_opacity.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        Expanded(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(
              "Good Bye Corporation! 반갑습니다.\n",
              style: TextStyle(fontSize: 45),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Flutter 개발자",
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  " 박민 ",
                  style: TextStyle(fontFamily: 'Nanum', fontSize: 60),
                ),
                Text(
                  "입니다.",
                  style: TextStyle(fontSize: 50),
                ),
              ],
            ),
          ]),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.center,
            child: SizedBox(
                width: 300,
                height: 320,
                child: ImageWithAnimatedOpacity(
                    image: AssetImage('assets/images/gb_logo.webp',))),
          ),
        ),
      ]),
    );
  }
}
