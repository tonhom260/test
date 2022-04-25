import 'package:ecommerce/utils/app_constants.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  late Map <String,String> _mainHeaders;
  final String appBaseUrl;

  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;//baseUrl constant => is from GetConnect
    timeout = const Duration (seconds: 30);
    token = AppConstants.TOKEN;
    _mainHeaders={
      'Content-type' : 'application/json; charset=UTF-8',
      'Authorization' : 'Bearer $token'
    };
  }


  Future<String?> getData(String uri) async{
    try{
      String response = await rootBundle.loadString(uri);//getxpackage get(uri)
      return response;
    }catch(e){
      print('fail fetch');
    }

  }

}