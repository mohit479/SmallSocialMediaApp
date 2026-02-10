import 'dart:typed_data';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

class Imagepickercontroller extends GetxController {
  XFile? selectedImage;
  Uint8List? list;
  RxBool isLoading = false.obs;

  ImagePicker picker = ImagePicker();

  Future<void> pickImage() async {
    isLoading.value = true;
    selectedImage = await picker.pickImage(source: ImageSource.gallery);

    if (selectedImage != null) {
      list = await selectedImage!.readAsBytes();
    }

    print(list);
    print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    
    isLoading.value = false;
  }
}
