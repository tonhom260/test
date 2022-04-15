import 'package:ecommerce/controllers/popular_product_controller.dart';
import 'package:get/get.dart';

class Test extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => PopularProductController(popularProductRepo: popularProductRepo))
  }
  
}