import 'package:activity_tracker/sensor_model.dart';

class SensorData {
  final Sensor gyroData;
  final Sensor acceleroData;

  SensorData({
    required this.gyroData,
    required this.acceleroData,
  });

  factory SensorData.fromJson(Map<String, dynamic> json) {
    return SensorData(
        gyroData: Sensor.fromJson(json['gyroData']),
        acceleroData: Sensor.fromJson(json['acceleroData']));
  }

  @override
  String toString() {
    return '{ gyroData:${this.gyroData}, acceleroData:${this.acceleroData}}';
  }
}
