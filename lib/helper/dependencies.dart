import 'package:ecommerce/controllers/popular_product_controller.dart';
import 'package:ecommerce/data/api/api_client.dart';
import 'package:ecommerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';


Future<void> init()async{
  //api client
  Get.lazyPut(()=>ApiClient(
  appBaseUrl: 'https://www.dbestech.com'));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(() => PopularProductController(popularProductRepo:  Get.find()));
  

}


