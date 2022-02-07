import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/resources/data_model.dart';

class DataView extends StatelessWidget {
  const DataView({Key? key, required this.title, required this.dataList}) : super(key: key);

  final String title;
  final List<DataModel> dataList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
        ] +
            dataList
                .map(
                  (DataModel data) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0),
                        child: Text(data.period),
                      ),
                      const SizedBox(width: 10),
                      Flexible(
                        child: Text(data.detail),
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
