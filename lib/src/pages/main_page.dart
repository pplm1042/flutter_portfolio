import 'package:flutter/cupertino.dart';
import 'package:flutter_portfolio/src/resources/image_with_animated_opacity.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 200, height: 320,child: ImageWithAnimatedOpacity(image:AssetImage('assets/images/min.webp'))),
            ],
          ),
          Text('s'), Text('b')],
      ),
    );
  }
}
