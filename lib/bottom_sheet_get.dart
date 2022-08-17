import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is bottom sheet Getx"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.bottomSheet(Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(
                            Icons.wb_incandescent,
                          ),
                          title: Text("Light Theme"),
                          onTap: () => Get.changeTheme(ThemeData.light()),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.wb_incandescent_outlined,
                          ),
                          title: Text("Dark Theme"),
                          onTap: () => Get.changeTheme(ThemeData.dark()),
                        ),
                      ],
                    ),
                  ));
                },
                child: Text("Bottom Sheet Button "))
          ],
        ),
      ),
    );
  }
}
