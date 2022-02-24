import 'package:activity_tracker/sensor_data_model.dart';

class SensorDataResponse {
  final String id;
  final String timestamp;
  final SensorData data;

  SensorDataResponse({
    required this.id,
    required this.timestamp,
    required this.data,
  });

  factory SensorDataResponse.fromJson(dynamic json) {
    return SensorDataResponse(
        id: json['id'] as String,
        timestamp: json['timestamp'] as String,
        data: SensorData.fromJson(json['data']));
  }

  @override
  String toString() {
    return '{ id:${this.id}, timestamp:${this.timestamp}, data:${this.data}    }';
  }
}
