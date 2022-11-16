import 'dart:async';
import 'dart:convert';

import 'package:getapiproject/Screens/logout.dart';
import 'package:getapiproject/Screens/sign_inScreen.dart';
import 'package:getapiproject/services/api_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupController extends GetxController{
  final ApiService apiService;

  SignupController({required this.apiService});

  signup(Name,email, password, cpassword) async{
    
      final Response = await apiService.Signup({
        'name': Name,
        'email': email,
        'password': password,
        'cpassword': cpassword,
      });

        Map<String, dynamic> map = jsonDecode(Response.toString()); 
      if(Response.statusCode == 200 ){
        print("ksld");
        Get.snackbar('Signup', map['result']);
       
        //  Get.to(()=> Signin());
       
      }
      else{
          Get.snackbar('Signup', map['message']);
      }
    
  }
}