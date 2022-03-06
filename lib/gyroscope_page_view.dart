import 'package:activity_tracker/sensor_data_response_model.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'http/http_service.dart';

class GyroscopePage extends StatelessWidget {
  final HttpService httpService = HttpService();

  GyroscopePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Activity"),
        backgroundColor: Colors.amber,
      ),
      body: FutureBuilder(
        future: httpService.readSensorsData(),
        builder: (BuildContext context,
            AsyncSnapshot<List<SensorDataResponse>> snapshot) {
          if (snapshot != null && snapshot.hasData) {
            List<SensorDataResponse>? sensorsData = snapshot.data;
            List<FlSpot>? gyroPlotX = [];
            List<FlSpot>? gyroPlotY = [];
            List<FlSpot>? gyroPlotZ = [];

            if (sensorsData != null) {
              sensorsData.asMap().forEach((index, value) => {
                    gyroPlotX.add(FlSpot(
                        index.toDouble(), double.parse(value.data.gyroData.x))),
                    gyroPlotY.add(FlSpot(
                        index.toDouble(), double.parse(value.data.gyroData.y))),
                    gyroPlotZ.add(FlSpot(
                        index.toDouble(), double.parse(value.data.gyroData.z)))
                  });
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("Gyroscope Data",
                          style: TextStyle(color: Colors.black, fontSize: 25)),
                      SizedBox(
                        width: 15,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("X: Red",
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Y: Green",
                          style: TextStyle(color: Colors.green, fontSize: 20)),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Z: Blue",
                          style: TextStyle(color: Colors.blue, fontSize: 20)),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                      alignment: Alignment.bottomLeft,
                      child: SizedBox(
                        width: 500,
                        height: 620,
                        child: LineChart(
                          LineChartData(
                              borderData: FlBorderData(show: false),
                              lineBarsData: [
                                LineChartBarData(
                                  spots: gyroPlotX,
                                  barWidth: 3,
                                  colors: [
                                    Colors.red,
                                  ],
                                ),
                                LineChartBarData(
                                  spots: gyroPlotY,
                                  barWidth: 3,
                                  colors: [
                                    Colors.green,
                                  ],
                                ),
                                LineChartBarData(
                                  spots: gyroPlotZ,
                                  barWidth: 3,
                                  colors: [
                                    Colors.blue,
                                  ],
                                ),
                              ]),
                        ),
                      ))
                ],
              );
            }
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
