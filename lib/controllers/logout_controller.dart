import 'dart:convert';

import 'package:getapiproject/Screens/sign_inScreen.dart';
import 'package:getapiproject/services/api_services.dart';
import 'package:get/get.dart';

class LogoutController extends GetxController{
  final ApiService apiService;
  LogoutController({required this.apiService});
  
  void logout()
  async{
    final Response = await apiService.logout();
    Map<String, dynamic> map = jsonDecode(Response.toString());
    if(Response.statusCode == 200)
    {
      Get.snackbar('Logout',map['message']);
         Get.to(()=> Signin());
    }
    else{
      Get.snackbar('Logout','unsuccessful');
    }
  }
}