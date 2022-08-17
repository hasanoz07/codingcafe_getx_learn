import 'package:codingcafe_getx_learn/bottom_sheet_get.dart';
import 'package:codingcafe_getx_learn/dialog_get.dart';
import 'package:codingcafe_getx_learn/routes/dash_board_page.dart';
import 'package:codingcafe_getx_learn/routes/home_page.dart';
import 'package:codingcafe_getx_learn/routes/routes_get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'reactive_state_managment/state_one.dart';
import 'reactive_state_managment/student_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Getx",
      initialRoute: "/",
      defaultTransition: Transition.fadeIn,
      getPages: [
        GetPage(
          name: "/",
          page: () => RoutesView(),
        ),
        GetPage(
          name: "/HomePage",
          page: () => HomePageView(),
        ),
        GetPage(
          name: "/DashBoard",
          page: () => DashBoardPage(),
        )
      ],
      home: StudentState(),
    );
  }
}
