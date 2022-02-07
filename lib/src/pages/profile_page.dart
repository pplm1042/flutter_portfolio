import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Profile',
            style: TextStyle(fontSize: 30),
          ),
          Divider(color: Colors.black12, thickness: 1.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(child: Text('1')),
                      Expanded(child: Text('2')),
                    ]),
                    Divider(color: Colors.black12, thickness: 1.0),
                    Row(children: [
                      Expanded(child: Text('a')),
                      Expanded(child: Text('b')),
                    ]),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(children: [
                      Expanded(child: Text('3')),
                      Expanded(child: Text('4')),
                    ]),
                    Divider(color: Colors.black12, thickness: 1.0),
                    Row(children: [
                      Expanded(child: Text('a')),
                      Expanded(child: Text('b')),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
