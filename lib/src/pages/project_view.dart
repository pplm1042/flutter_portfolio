import 'package:flutter/material.dart';
import 'package:flutter_portfolio/src/resources/project_model.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({Key? key, required this.title, required this.dataList})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('프로젝트 명 : ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color : Colors.green),),
                Flexible(child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color : Colors.green),),)
              ],
            ),
            SizedBox(height: 20,),
              ] +
              dataList
                  .map(
                    (ProjectModel data) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(data.subtitle),
                        Flexible(child: Text(data.detail)),
                      ],
                    ),
                  )
                  .toList()),
    );
  }

  final List<ProjectModel> dataList;
}
