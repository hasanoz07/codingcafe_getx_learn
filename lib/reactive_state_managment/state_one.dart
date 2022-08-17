import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReactiveManagment extends StatelessWidget {
  ReactiveManagment({Key? key}) : super(key: key);
  var counter = 0.obs;
  void upCounter() {
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: upCounter,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Reactive State Management"),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text("Counter Value $counter"),
          )
        ],
      )),
    );
  }
}
