import 'package:flutter/material.dart';

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Container(
                height: double.infinity,
                width: 280,
                color: Colors.green,
              )
            ],
          )),
          Container(
            height: 85,
            width: double.infinity,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}