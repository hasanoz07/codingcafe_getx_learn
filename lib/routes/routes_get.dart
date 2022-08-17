import 'package:codingcafe_getx_learn/routes/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutesView extends StatelessWidget {
  const RoutesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Route Navigation For Un-named Routed")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [ElevatedButton(onPressed: () {Get.toNamed("/HomePage");}, child: Text("Go to Home"))],
      )),
    );
  }
}
