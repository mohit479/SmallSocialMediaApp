import 'package:get/get.dart';
import 'package:social_media/controller/imagePickerController.dart';

class Imagepickerbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Imagepickercontroller>(() => Imagepickercontroller());
  }
}
