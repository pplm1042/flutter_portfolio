import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/resources/career_model.dart';
import 'package:flutter_portfolio/src/resources/url.dart';
import 'package:get/get.dart';

class BlogView extends StatelessWidget {
  const BlogView({Key? key, required this.dataList}) : super(key: key);

  final List dataList;

  @override
  Widget _mobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            dataList[0],
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
          SizedBox(
            height : 5,
          ),
          Text(
            dataList[1],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: InkWell(
                  onTap: () => launchUrlByKey(dataList[3]),
                  child: Image.asset(dataList[2],
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () => launchUrlByKey(dataList[3]),
            icon: const Icon(Icons.launch, color: Colors.black54),
            label: Text('블로그 바로가기', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
          ),
          SizedBox( height: 30,)
        ],
      ),
    );
  }

  @override
  Widget _desktopLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            dataList[0],
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green),
          ),
          SizedBox(
            height : 20,
          ),
          Text(
            dataList[1],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Container(
                decoration: BoxDecoration(border: Border.all(width: 1)),
                child: InkWell(
                  onTap: () => launchUrlByKey(dataList[3]),
                  child: Image.asset(dataList[2],
                      fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          TextButton.icon(
            onPressed: () => launchUrlByKey(dataList[3]),
            icon: const Icon(Icons.launch, color: Colors.black54),
            label: Text('블로그 바로가기', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
          ),
          SizedBox( height: 30,)
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
