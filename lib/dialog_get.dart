import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogGet extends StatelessWidget {
  DialogGet({Key? key}) : super(key: key);
  Rx<MaterialColor> buttonColor = Colors.green.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialog Title",
                  titleStyle: TextStyle(fontWeight: FontWeight.bold),
                  middleText: "This will be middle Area",
                  middleTextStyle: Theme.of(context).textTheme.subtitle1,
                  backgroundColor: Colors.blueGrey,
                  radius: 80,
                  barrierDismissible: true,
                  textCancel: "No",
                  cancelTextColor: Colors.white,
                  textConfirm: "Yes",
                  confirmTextColor: Colors.white,
                  onConfirm: () {
                    print("cofirm");
                    buttonColor = Colors.red.obs;
                  },
                  onCancel: () {
                    print("candel");
                    buttonColor = Colors.red.obs;
                  },
                );
              },
              child: Text(
                "This is show dialog button",
              ),
              style: ElevatedButton.styleFrom(primary: buttonColor.value),
            ),
          )
        ],
      )),
    );
  }
}
