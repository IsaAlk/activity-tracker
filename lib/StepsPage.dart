import 'package:flutter/material.dart';

import 'http/http_service.dart';

class StepsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  StepsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Activity"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Align(
                alignment: Alignment.center,
                child: Text(
                  'Steps: {numberOfSteps}',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                  textAlign: TextAlign.center,
                )),
          ],
        ));
  }
}
