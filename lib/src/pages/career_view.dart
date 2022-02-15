import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/resources/career_model.dart';
import 'package:get/get.dart';

class CareerView extends StatelessWidget {
  const CareerView({Key? key, required this.dataList}) : super(key: key);

  final List<CareerModel> dataList;

  @override
  Widget _mobileLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: dataList
              .map(
                (CareerModel career) => Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          career.institution,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          career.period,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        )
                      ]),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    career.position,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  for (var item in career.detail) Text(item)
                ],
              ),
            ),
          )
              .toList()),
    );
  }

  @override
  Widget _desktopLayout(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: dataList
              .map(
                (CareerModel career) => Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              career.institution,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              career.period,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            )
                          ]),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        career.position,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      for (var item in career.detail) Text(item)
                    ],
                  ),
                ),
              )
              .toList()),
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
