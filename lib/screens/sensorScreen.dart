import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';


class SensorScreen extends StatefulWidget {
  @override
  _SensorScreenState createState() => _SensorScreenState();
}

class _SensorScreenState extends State<SensorScreen> {
  String _daten = "noch nix";
  String _acc_x = "x";
  String _acc_y = "y";
  String _acc_z = "z";
  String _gyro_x = "gx";
  String _gyro_y = "gy";
  String _gyro_z = "gz";

  @override
  void initState(){

    accelerometerEvents.listen((AccelerometerEvent event) {
      setState(() {
        _acc_x = event.x.toString();
        _acc_y = event.y.toString();
        _acc_z = event.z.toString();



       // _daten = event.toString();
      });
      //print(event);
    });// [AccelerometerEvent (x: 0.0, y: 9.8, z: 0.0)]

    userAccelerometerEvents.listen((UserAccelerometerEvent event) {
      print(event);
    });// [UserAccelerometerEvent (x: 0.0, y: 0.0, z: 0.0)]

    gyroscopeEvents.listen((GyroscopeEvent event) {
      setState(() {
        _gyro_x = event.x.toString();
        _gyro_y = event.y.toString();
        _gyro_z = event.z.toString();
      });
      //print(event);
    });// [GyroscopeEvent (x: 0.0, y: 0.0, z: 0.0)]

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sensoren"),
      ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: <Widget>[
                Text("Werte"),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("x: " + _acc_x),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("y: " + _acc_y),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("z: " + _acc_z),
                ),


                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("Gyro x: " + _gyro_x),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("Gyro y: " + _gyro_y),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text("Gyro z: " + _gyro_z),
                ),
              ],
            ),
          )
    );
  }
}

