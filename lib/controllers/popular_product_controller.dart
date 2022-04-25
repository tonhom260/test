import 'package:ecommerce/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';
import 'dart:convert';
import '../models/products_model.dart';

class PopularProductController extends GetxController{


  final PopularProductRepo popularProductRepo;
  List<ProductModel> _popularProductList = [];
  List<ProductModel> get popularProductList  => _popularProductList;

  PopularProductController({required this.popularProductRepo});


  Future<void> getPopularProductList()async {
    String? response = await popularProductRepo.getPopularProductList();
    if(response != null ){
      print('got products');
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(jsonDecode(response)).products);
      print(_popularProductList);
      update();
    }else{
      print('fail Loading');
      // print(response.statusCode);
    }
  }


}