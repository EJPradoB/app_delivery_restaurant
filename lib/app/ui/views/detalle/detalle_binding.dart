import 'package:app_delivery_restaurant/app/ui/views/detalle/detalle_controller.dart';
import 'package:get/get.dart';

class DetalleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetalleController());
  }
}
