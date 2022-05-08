import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/modules/home_screen/main_home_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails) {
    return Material(
      child: Container(
        color: Colors.green,
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            flutterErrorDetails.exception.toString(),
            style: const TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  };
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Food Order',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainHomeScreen(),
    );
  }
}
