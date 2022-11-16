import 'dart:math';

import 'package:getapiproject/Screens/sign_inScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Widgets/custom_button.dart';
import '../../Widgets/custom_socialbutton.dart';
import '../../Widgets/custom_textfield.dart';
import '../controllers/sign_up_controller.dart';

class SignUp extends StatelessWidget {
  TextEditingController Name = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController Cpassword = TextEditingController();
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
                'Create an Account',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 36.sp),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Name',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w, right: 36.w),
                child: CustomTextfiled(
                  controller: Name,
                  HintText: 'Enter your FirstName',
                  obsecure: false,
                  color: Colors.black,
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
                  controller: Email,
                  HintText: 'Enter your Email',
                  obsecure: false,
                  color: Colors.black,
                ),
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
                  controller: Password,
                  HintText: 'Enter your Password',
                  obsecure: true,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Confirm Password',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.w, right: 36.w),
                child: CustomTextfiled(
                  controller: Cpassword,
                  HintText: 'Enter your Confirm Password',
                  obsecure: true,
                  color: Colors.black,
                  icon: Icon(Icons.lock_outline_rounded),
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              InkWell(
                onTap: () {
                   Get.find<SignupController>().signup(
                              Name.text.trim(),
                              Email.text.trim(),
                              Password.text.trim(),
                              Cpassword.text.trim());
            
                },
                child: CustomButton(
                  Label: 'Create your account',
                  color: Colors.blue,
                  bgColor: Colors.blue,
                  txtColor: Colors.white,
                  Height: 52.h,
                  Width: 342.w,
                  Fweight: FontWeight.w400,
                  Fsize: 18.sp,
                  bradius: BorderRadius.circular(8),
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
                      'Already a member?',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                    ),
                    InkWell(
                        onTap: () {
                          
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signin()),
                  );
                        },
                        child: Text(
                          ' Sign in',
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
