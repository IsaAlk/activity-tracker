import 'package:flutter/material.dart';
import 'http/http_service.dart';
import 'dummy_model.dart';

class DummyPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummy"),
      ),
      body: FutureBuilder(
        future: httpService.dummyGet(),
        builder: (BuildContext context, AsyncSnapshot<List<Dummy>> snapshot) {
          if (snapshot != null && snapshot.hasData) {
            List<Dummy>? dummys = snapshot.data;
            if (dummys != null){
              return ListView(
                children: dummys
                    .map(
                      (Dummy dummy) => ListTile(
                    title: Text(dummy.title),
                    subtitle: Text("${dummy.userId}"),
                  ),
                )
                    .toList(),
              );
            }
            return Container(
                color: Colors.white // This is optional
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
