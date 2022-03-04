import 'package:flutter/material.dart';

import 'http/http_service.dart';

class DistancePage extends StatelessWidget {
  final HttpService httpService = HttpService();

  DistancePage({Key? key}) : super(key: key);

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
                  'Distance: {distance}',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                  textAlign: TextAlign.center,
                )),
          ],
        ));
  }
}
