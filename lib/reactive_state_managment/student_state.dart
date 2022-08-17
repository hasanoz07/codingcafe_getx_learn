import 'package:codingcafe_getx_learn/reactive_state_managment/student.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentState extends StatelessWidget {
  StudentState({Key? key}) : super(key: key);
  var student = Student(21, "Hasan OZ").obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Management By using obx and Custom Class"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Name is ${student.value.name}"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  student.update((student) {
                    student!.name = student.name.toUpperCase();
                  });
                },
                child: Text("Upper Case Student Name")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  student.update((student) {
                    student!.name = student.name.toLowerCase();
                  });
                },
                child: Text("Lovee Case Student Name"))
          ],
        ),
      ),
    );
  }
}
