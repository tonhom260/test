import 'package:ecommerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import '../models/products_model.dart';

class RecommendedProductController extends GetxController{


  // final RecommendedProductRepo popularProductRepo;
  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList  => _recommendedProductList;

  // RecommendedProductController({required this.popularProductRepo});


  // Future<void> getRecommendedProductList()async{
  //   Response response = await popularProductRepo.getPopularProductList();
  //   if(response.statusCode == 200 ){
  //     print('got products');
  //     _popularProductList = [];
  //     _popularProductList.addAll(Product.fromJson(response.body).products);
  //     print(_popularProductList);
  //     update();
  //   }else{}
  // }
  //

}