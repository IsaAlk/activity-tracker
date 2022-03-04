import 'package:activity_tracker/AccelerometerDataPage.dart';
import 'package:activity_tracker/StepsPage.dart';
import 'package:flutter/material.dart';

import 'DistancePage.dart';
import 'GyroscopeDataPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Home Page',
          ),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: const Text("Accelerometer Data"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.amber,
                    onSurface: Colors.grey,
                    side: BorderSide(color: Colors.black, width: 1),
                    elevation: 60,
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccelerometerDataPage()),
                    );
                  },
                )),
            const SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text("Gyroscope Data"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.amber,
                    onSurface: Colors.grey,
                    side: BorderSide(color: Colors.black, width: 1),
                    elevation: 60,
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GyroscopeDataPage()),
                    );
                  },
                )),
            const SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text("Steps"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.amber,
                    onSurface: Colors.grey,
                    side: BorderSide(color: Colors.black, width: 1),
                    elevation: 60,
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StepsPage()),
                    );
                  },
                )),
            const SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text("Distance"),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.amber,
                    onSurface: Colors.grey,
                    side: BorderSide(color: Colors.black, width: 1),
                    elevation: 60,
                    minimumSize: Size(200, 50),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DistancePage()),
                    );
                  },
                ))
          ],
        ));
  }
}
