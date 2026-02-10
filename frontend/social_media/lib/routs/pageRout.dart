import 'package:get/get.dart';
import 'package:social_media/bindings/imagePickerBinding.dart';
import 'package:social_media/pages/HomePage.dart';
import 'package:social_media/pages/postPage.dart';

class Pagerout {
  static const home = "/home";
  static const post = "/post";

  static final routes = [
    GetPage(name: home, page: () => Homepage()),
    GetPage(
      name: post,
      page: () => Postpage(),
      bindings: [Imagepickerbinding()],
    ),
  ];
}
