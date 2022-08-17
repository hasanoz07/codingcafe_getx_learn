import 'package:codingcafe_getx_learn/routes/dash_board_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage Route"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "This is the Home Page Screen",
              style: TextStyle(color: Colors.black54, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/DashBoard");
              },
              child: Text(
                "Go to dashboard Page",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){Get.back();}, child: Text("Go Back to Main"))
          ],
        ),
      ),
    );
  }
}
