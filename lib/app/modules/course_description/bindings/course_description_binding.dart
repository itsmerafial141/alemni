import 'package:get/get.dart';

import '../controllers/course_description_controller.dart';

class CourseDescriptionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseDescriptionController>(
      () => CourseDescriptionController(),
    );
  }
}
