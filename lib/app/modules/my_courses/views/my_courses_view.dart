import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_courses_controller.dart';

class MyCoursesView extends GetView<MyCoursesController> {
  const MyCoursesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyCoursesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyCoursesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
