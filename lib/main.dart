import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hardware/screens/cameraScreen.dart';
import 'package:flutter_app_hardware/screens/shared_preferencesScreen.dart';
import 'package:flutter_app_hardware/screens/udidScreen.dart';
//import 'package:flutter_app_hardware/screens/sensorScreen.dart';

void main() => runApp(MyApp());

/*Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  //final secCamera = cameras.second;



  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: TakePictureScreen(
        // Pass the appropriate camera to the TakePictureScreen widget.
        camera: firstCamera,
      ),
    ),
  );
}*/

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,    //Swatch: Sammlung von Farben, einfache Alternative: Themes
      ),
      //home: SensorScreen(),
     /* home: TakePictureScreen(
        camera: CameraDescription(    //Konstruktor, Parameter muss gesetzt werden
          name: "Kamera",
        ),
      ),*/
     //home: UdidScreen(),
      home: SharedPreferencesScreen(),
    );
  }
}

