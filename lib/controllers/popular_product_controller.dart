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
    Response response = await popularProductRepo.getPopularProductList();
    if(response.statusCode == 200 ){
      print('got products');
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      update();
    }else{
      print('fail Loading');
      // print(response.statusCode);
    }
  }


}