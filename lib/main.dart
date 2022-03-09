import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery/modules/home_screen/main_home_screen.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
