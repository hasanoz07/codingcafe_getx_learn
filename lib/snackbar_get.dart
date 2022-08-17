import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SnackBarGet extends StatelessWidget {
  const SnackBarGet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("This is Snack Bar"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [ElevatedButton(onPressed: () {
            Get.snackbar("Its Snack Bar", "Hello Snackbar",barBlur: 1.0,backgroundColor: Colors.red);
          }, child: Text("Show Snackbar"))],
        )),
      );
  }
}