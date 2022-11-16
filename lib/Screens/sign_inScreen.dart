import 'package:getapiproject/Screens/logout.dart';
import 'package:getapiproject/Screens/signup_screen.dart';
import 'package:getapiproject/controllers/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Widgets/custom_button.dart';
import '../Widgets/custom_socialbutton.dart';
import '../Widgets/custom_textfield.dart';


class Signin extends StatelessWidget {
  
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
 

  login()async{
  await Get.find<SigninController>().signin(email.text.trim(), password.text.trim());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 32.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 37.h,
              ),
              Text(
                'SignIn',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 36.sp),
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                'Welcome we miss you',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.sp,
                  color: Color.fromRGBO(131, 142, 161, 0.5),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Email',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w, right: 36.w),
                child: CustomTextfiled(
                  controller: email,
                    HintText: 'Enter your Email', obsecure: false,color: Colors.black),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Password',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w, right: 36.w),
                child: CustomTextfiled(
                  controller: password,
                  HintText: 'Enter Password',
                  obsecure: true,
                  color: Colors.black,
                  icon: Icon(Icons.lock_outline),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  'Forget Password?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: Color(0xff2A84F2)),
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              InkWell(
                  onTap: () {
                  
                    login();
                    },
                  child: CustomButton(
                    Label: 'Sign in',
                    color: Colors.blue,
                    bgColor: Colors.blue,
                    txtColor: Colors.white,
                    Height: 52.h,
                    Width: 342.w,
                    Fweight: FontWeight.w400,
                    Fsize: 18.sp,
                    bradius: BorderRadius.circular(8),
                  )),
              SizedBox(
                height: 84.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.w,
                  right: 36.w,
                ),
                child: SocialButton(
                  text: 'Sign in with Google',
                  image: 'assets/images/google 1.png',
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w),
                child: Row(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          ' Sign up now',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 14),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
