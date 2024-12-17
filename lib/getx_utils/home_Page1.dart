import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: FloatingActionButton(onPressed: () {
              Get.snackbar('Pallu', 'subscribe to my channel',
                  backgroundColor: Colors.blue,
                  colorText: Colors.white,
                  snackPosition: SnackPosition.BOTTOM);
            }),
          )
        ],
      ),
    ));
  }
}
