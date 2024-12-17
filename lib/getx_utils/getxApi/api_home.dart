import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm/getx_utils/getxApi/login_controller.dart';

class ApiHome extends StatefulWidget {
  const ApiHome({super.key});

  @override
  State<ApiHome> createState() => _ApiHomeState();
}

class _ApiHomeState extends State<ApiHome> {
  LoginController controller = Get.put(LoginController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Api in Getx tutorial',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(hintText: 'Enter Email'),
            ),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(hintText: 'Enter Password'),
            ),
            SizedBox(
              height: 50,
            ),
            InkWell(onTap: (){
              controller.loginApi();
            },
              child: Container(height: 45,color: Colors.green,
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}/*{
"email": "eve.holt@reqres.in",
"password": "cityslicka"
}*/
