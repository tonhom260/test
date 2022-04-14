import 'package:ecommerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController{
  final PopularProductRepo popularProductRepo;

  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];

  Future<void> getPopularProductList()async{
    Response response = await popularProductRepo.getPopularProductList();
  }
}