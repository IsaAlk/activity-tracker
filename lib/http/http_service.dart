import 'dart:convert';

import 'package:activity_tracker/sensor_data_response_model.dart';
import 'package:http/http.dart';

class HttpService {
  final readSensorDataURI = Uri.parse(
      'https://us-central1-tracker-project-341620.cloudfunctions.net/readSensorData');

  Future<List<SensorDataResponse>> readSensorsData() async {
    Response res = await get(readSensorDataURI);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<SensorDataResponse> sensorDataResponse = body
          .map(
            (dynamic item) => SensorDataResponse.fromJson(item),
          )
          .toList();

      return sensorDataResponse;
    } else {
      throw "Unable to retrieve sensors data.";
    }
  }
}
