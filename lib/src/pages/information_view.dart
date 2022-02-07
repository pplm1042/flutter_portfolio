import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/resources/information_model.dart';
import 'package:flutter_portfolio/src/resources/url.dart';

class InformationView extends StatelessWidget {
  const InformationView({Key? key, required this.informationList}) : super(key: key);

  final List<InfoModel> informationList;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '박민 / Min Park', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('1994.01.09. / 경기도 용인시', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
        ] +
            informationList
                .map(
                  (InfoModel information) => InkWell(
                onTap: () => launchUrlByKey(information.urlKey),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
                      child: Icon(information.iconData, size: 23),
                    ),
                    Flexible(
                      child: Text(information.detail, style: TextStyle(fontSize: 18),),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
