import 'dart:convert';
import 'package:get/get.dart';
import '../models/products_model.dart';

class RecommendedProductController extends GetxController{


  // final RecommendedProductRepo recommendedProductRepo;
  List<ProductModel> _recommendedProductList = [];
  List<ProductModel> get recommendedProductList  => _recommendedProductList;

  // RecommendedProductController({required this.recommendedProductRepo});


  // Future<void> getRecommendedProductList()async{
    // String? response = await recommendedProductRepo.getPopularProductList();
  //   if(response != null ){
  //     print('got products');
  //     _recommendedProductList = [];
  //     _recommendedProductList.addAll(Product.fromJson(jsonDecode(response)).products);
  //     print(_recommendedProductList);
  //     update();
  //   }else{}
  // }

}