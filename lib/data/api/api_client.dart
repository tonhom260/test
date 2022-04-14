import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  late Map <String,String> _mainHeaders;
  final String appBaseUrl;

  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;//baseUrl is from GET PACKAGE
    timeout = const Duration (seconds: 30);
    _mainHeaders={
      'Content-type' : 'application/json; charset=UTF-8',
      'Authorization' : 'Bearer $token',
    };
  }

  Future<Response> getData(String uri) async{
    try{
      Response response = await get(uri);
      return response;
    }catch(e){
      return Response(statusText: e.toString());
    }

  }

}