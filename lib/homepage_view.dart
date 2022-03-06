import 'package:activity_tracker/accelerometer_page_view.dart';
import 'package:flutter/material.dart';

import 'ble/bluetooth_manager.dart';
import 'gyroscope_page_view.dart';

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
                          builder: (context) => AccelerometerPage()),
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
                      MaterialPageRoute(builder: (context) => GyroscopePage()),
                    );
                  },
                )),
            const SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text("Bluetooth Manager"),
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
                          builder: (context) => BluetoothManager()),
                    );
                  },
                ))
          ],
        ));
  }
}
