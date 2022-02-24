import 'package:activity_tracker/sensor_data_response_model.dart';
import 'package:flutter/material.dart';

import 'http/http_service.dart';

class DummyPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensors Data"),
      ),
      body: FutureBuilder(
        future: httpService.readSensorsData(),
        builder: (BuildContext context,
            AsyncSnapshot<List<SensorDataResponse>> snapshot) {
          if (snapshot != null && snapshot.hasData) {
            List<SensorDataResponse>? sensorsData = snapshot.data;
            if (sensorsData != null) {
              return ListView(
                children: sensorsData
                    .map(
                      (SensorDataResponse sensorDataResponse) => ListTile(
                        title: Text(sensorDataResponse.timestamp),
                        subtitle: Text(sensorDataResponse.data.toString()),
                      ),
                    )
                    .toList(),
              );
            }
            return Container(color: Colors.white // This is optional
                );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
