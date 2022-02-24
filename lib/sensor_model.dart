class Sensor {
  final String x;
  final String y;
  final String z;

  Sensor({
    required this.x,
    required this.y,
    required this.z,
  });

  factory Sensor.fromJson(Map<String, dynamic> json) {
    return Sensor(
        x: json['x'] as String, y: json['y'] as String, z: json['z'] as String);
  }

  @override
  String toString() {
    return '{ x:${this.x}, y:${this.y}, z:${this.z}}';
  }
}
