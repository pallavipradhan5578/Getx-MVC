import 'package:flutter/material.dart';
import 'package:getx_mvvm/data/app_exceptions.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //floatingActionButton: FloatingActionButton(onPressed: (){
        //throw  InternetException('  This is pallavi');
        //  }),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               RichText(
                      text: TextSpan(
                text: 'big',
                style: TextStyle(color: Colors.red, fontSize: 40,fontWeight: FontWeight.bold), // Default style
                children: <TextSpan>[
                  TextSpan(
                    text: 'basket',
                    style: TextStyle(fontStyle: FontStyle.normal, color: Colors.black,fontWeight: FontWeight.w400),
                  ),
                ],
                      ),
                    ),
              RichText(
                text: TextSpan(
                  text: 'A',
                  style: TextStyle(color: Colors.blue, fontSize: 30,), // Default style
                  children: <TextSpan>[
                    TextSpan(
                      text: 'TATA',
                      style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
