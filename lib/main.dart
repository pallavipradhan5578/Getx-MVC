import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/class2.dart';


import 'getx_utils/getxApi/api_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  StudentScreen(),debugShowCheckedModeBanner: false,
    );
  }
}


