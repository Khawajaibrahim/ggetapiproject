import 'dart:async';
import 'dart:convert';

import 'package:getapiproject/Screens/logout.dart';
import 'package:getapiproject/services/api_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SigninController extends GetxController{
  final ApiService apiService;

  SigninController({required this.apiService});

  signin(email, password) async{
    
      final Response = await apiService.login({
        'email': email,
        'password': password,
      });

      if(Response.statusCode == 201 ){
        Map<String, dynamic> map = jsonDecode(Response.toString()); 
        SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
        sharedPreferences.setString("token", map["token"],);
        Get.snackbar('Login','Successfullllllllllllllly');
        print(sharedPreferences.getString('token'));
         Get.to(()=> HomeScreen());
       
      }
      else{
          Get.snackbar('Login','not Successfullllllllllllllly');
      }
    
  }
}