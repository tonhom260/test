import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String appBaseUrl;

  ApiClient({required this.appBaseUrl}){
    baseUrl = appBaseUrl;//baseUrl is from GET PACKAGE
    timeout = Duration (seconds: 30);
  }


}