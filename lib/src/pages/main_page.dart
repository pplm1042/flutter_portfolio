import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_fadein/flutter_fadein.dart';
import 'package:flutter_portfolio/src/resources/image_with_animated_opacity.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget _mobileLayout(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: 300,
        height: 300,
        child: Align(
          alignment: Alignment.center,
          child: ImageWithAnimatedOpacity(
              image: AssetImage(
                'assets/images/flutter.webp',
              )),
        ),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Welcome to my homepage!',
                          textStyle: TextStyle(fontSize: 20),
                          speed: Duration(milliseconds: 100)),
                    ],
                    totalRepeatCount: 1,
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeIn(
                        child: Text(
                          "Flutter 개발자",
                          style: TextStyle(fontSize: 20),
                        ),
                        duration: Duration(milliseconds: 5000),
                        curve: Curves.easeIn,
                      ),
                      FadeIn(
                        child: Text(
                          " 박민 ",
                          style:
                          TextStyle(fontFamily: 'Nanum', fontSize: 20),
                        ),
                        duration: Duration(milliseconds: 5000),
                        curve: Curves.easeIn,
                      ),
                      FadeIn(
                        child: Text(
                          "입니다.",
                          style: TextStyle(fontSize: 20),
                        ),
                        duration: Duration(milliseconds: 5000),
                        curve: Curves.easeIn,
                      ),
                    ],
                  ),
                ]),

          ]),
      SizedBox(height: 200,),
      Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Text('이 홈페이지는 Flutter를 사용하여 제작했습니다.', style: TextStyle(fontSize: 10),),
      )
    ]);
  }

  @override
  Widget _desktopLayout(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 200, left: 40, right: 40, bottom : 100,),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText('Welcome to my homepage!',
                              textStyle: TextStyle(fontSize: 45),
                              speed: Duration(milliseconds: 100)),
                        ],
                        totalRepeatCount: 1,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FadeIn(
                            child: Text(
                              "Flutter 개발자",
                              style: TextStyle(fontSize: 50),
                            ),
                            duration: Duration(milliseconds: 5000),
                            curve: Curves.easeIn,
                          ),
                          FadeIn(
                            child: Text(
                              " 박민 ",
                              style:
                                  TextStyle(fontFamily: 'Nanum', fontSize: 60),
                            ),
                            duration: Duration(milliseconds: 5000),
                            curve: Curves.easeIn,
                          ),
                          FadeIn(
                            child: Text(
                              "입니다.",
                              style: TextStyle(fontSize: 50),
                            ),
                            duration: Duration(milliseconds: 5000),
                            curve: Curves.easeIn,
                          ),
                        ],
                      ),
                    ]),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 400,
                      height: 500,
                      child: ImageWithAnimatedOpacity(
                          image: AssetImage(
                        'assets/images/flutter.webp',
                      ))),
                ),
              ),
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: Text('이 홈페이지는 Flutter를 사용하여 제작했습니다.', style: TextStyle(fontSize: 20),),
      )
    ]);
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
