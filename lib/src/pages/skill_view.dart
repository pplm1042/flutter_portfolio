import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/resources/data_model.dart';
import 'package:get/get.dart';

class SkillView extends StatelessWidget {
  const SkillView({Key? key, required this.title, required this.dataList}) : super(key: key);

  final String title;
  final List<DataModel> dataList;

  @override
  Widget _mobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:15.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.purpleAccent), textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
          ] +
              dataList
                  .map(
                    (DataModel data) => Padding(
                  padding: const EdgeInsets.only(bottom : 2, left: 10, right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(data.period, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Text(data.detail, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),),
                      ),
                    ],
                  ),
                ),
              ).toList()
      ),
    );
  }

  @override
  Widget _desktopLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purpleAccent), textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
        ] +
            dataList
                .map(
                  (DataModel data) => Padding(
                    padding: const EdgeInsets.only(bottom : 10, left: 50, right: 50),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(data.period, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Text(data.detail, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                      ),
                    ],
                ),
                  ),
            ).toList()
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
