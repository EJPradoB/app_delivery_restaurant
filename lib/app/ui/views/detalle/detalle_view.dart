import 'package:app_delivery_restaurant/app/ui/views/detalle/detalle_controller.dart';
import 'package:app_delivery_restaurant/app/ui/views/detalle/widgets/infoCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetalleView extends StatelessWidget {
  const DetalleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetalleController>(
      builder: (controller) {
        return Scaffold(
          body: InfoCategory(),
        );
      },
    );
  }
}
