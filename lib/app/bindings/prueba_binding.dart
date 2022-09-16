
import 'package:get/get.dart';
import '../controllers/prueba_controller.dart';


class PruebaBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PruebaController>(() => PruebaController());
  }
}