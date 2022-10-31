import 'package:app_delivery_restaurant/app/ui/views/itemPressImage/itemPressImage_controller.dart';
import 'package:get/get.dart';

class ItemPressImagenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItemPressImageController());
  }
}
