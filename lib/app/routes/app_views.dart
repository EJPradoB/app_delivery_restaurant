import 'package:app_delivery_restaurant/app/routes/app_routes.dart';
import 'package:app_delivery_restaurant/app/ui/views/home/home_binding.dart';
import 'package:app_delivery_restaurant/app/ui/views/home/home_view.dart';
import 'package:app_delivery_restaurant/app/ui/views/itemPressImage/itemPressImage_view.dart';
import 'package:get/get.dart';

class AppViews {
  static final views = [
    GetPage(
        name: AppRoutes.HOME,
        page: () => const HomeView(),
        binding: HomeBinding()),
    GetPage(
        name: AppRoutes.ITEMPRESSIMAGE,
        page: () => const ItemPressImageView(),
        binding: HomeBinding())
  ];
}
